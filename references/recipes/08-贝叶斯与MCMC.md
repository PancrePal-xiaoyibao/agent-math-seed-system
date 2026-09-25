# 🧮 code-recipe · 08 贝叶斯与 MCMC

> **激活词**（import 锚点）：`from scipy import stats` / `from scipy import integrate` / `import pymc as pm`（需安装）—— 任务里出现"先验、后验、共轭、贝叶斯更新、MCMC、采样、收敛诊断、贝叶斯因子、A/B 测试监控"任一信号，锚定本卡。
> **覆盖工具**（3 条，域 C4 全量）：
> - 先验、后验与共轭先验 (Prior, Posterior & Conjugate Priors) → [domains/C4 贝叶斯统计](../domains/C-概率统计与随机/C4-贝叶斯统计.md)
> - 马尔可夫链蒙特卡洛：Metropolis-Hastings 与 Gibbs (MCMC) → [domains/C4 贝叶斯统计](../domains/C-概率统计与随机/C4-贝叶斯统计.md)
> - 贝叶斯模型比较 / 贝叶斯因子 (Bayes Factor) → [domains/C4 贝叶斯统计](../domains/C-概率统计与随机/C4-贝叶斯统计.md)
> **运行环境**：numpy、scipy（预装即可）；PyMC + ArviZ 为生产级可选，见文末「需安装」小节，示例不进可运行块。

---

## 模板代码

### 先验、后验与共轭先验 (Prior, Posterior & Conjugate Priors)——小样本/流式场景下的闭式信念更新

先验编码数据前的信念，乘似然归一化得后验；共轭先验让"更新"退化为参数平移（Beta←Beta-Binomial、Gamma←Gamma-Poisson），一秒出答案，不用采样。先验不是随便拍的：小样本下先验会主导后验，报告前必须做先验敏感性对比。

```python
import numpy as np
from scipy import stats
# 例：10 笔小额贷款 1 笔违约，更新违约率 θ 的先验 → 后验
a0, b0, k, n = 2.0, 20.0, 1, 10                 # Beta(2,20) 信息先验 + 数据 k/n
pa, pb = a0 + k, b0 + n - k
post = stats.beta(pa, pb)                       # ✅ 共轭更新 = 参数平移 a←a+k, b←b+n−k，闭式免采样
print(f"后验 Beta({pa:.0f},{pb:.0f})  均值={post.mean():.4f}  "
      f"95% CI={post.ppf([0.025, 0.975]).round(3)}")
# ⚠️ scipy 的 stats.beta(...).a/.b 是支撑上下界（恒 0/1），不是形状参数——形状参数看 .args
grid = np.linspace(0.001, 0.20, 12)             # 后验钟形曲线采样点（峰在众数 ≈0.067 附近）
h = post.pdf(grid)
for gi, hi in zip(grid, h):
    print(f"θ={gi:5.3f}  {'█' * int(hi / h.max() * 44):<44} {hi:6.1f}")
# ⚠️ 先验敏感性：小样本下先验会主导后验，下结论前换先验对比一遍
for a, b in [(1.0, 1.0), (2.0, 20.0)]:
    p = stats.beta(a + k, b + n - k)
    print(f"先验 Beta({a:.0f},{b:.0f}) → 后验均值 {p.mean():.4f}")
```

### 马尔可夫链蒙特卡洛：Metropolis-Hastings (MCMC)——后验无闭式解时的通用采样引擎

构造以目标后验为平稳分布的马尔可夫链，靠长时间采样近似后验。两条铁律：**全程 log 空间**（原始概率连乘必下溢）、**必须诊断收敛**（R̂ + ESS + 丢 burn-in）。以 logistic 回归二维后验为例，手写 MH 只需十几行：

```python
import numpy as np
rng = np.random.default_rng(0)
x = np.array([-2., -1., -0.5, 0., 0.5, 1., 1.5, 2., 2.5, 3.])
y = np.array([0, 0, 0, 1, 0, 1, 1, 1, 1, 1])            # 10 样本二分类（如违约标记）
def log_post(th):
    eta = th[0] + th[1] * x
    ll = np.sum(y * eta - np.logaddexp(0, eta))          # ✅ logaddexp 稳定算 log p(y|θ)
    return ll - (th @ th) / 8.0                          # 弱信息高斯先验 N(0, 2²I)
step, n_iter, burn = np.array([1.2, 1.2]), 12000, 3000   # 提议步长 ≈ 后验 sd 量级
th, lp, out, acc = np.zeros(2), log_post(np.zeros(2)), np.empty((n_iter - burn, 2)), 0
for i in range(n_iter):
    prop = th + rng.normal(size=2) * step                # 对称高斯提议
    lpp = log_post(prop)
    if np.log(rng.random()) < lpp - lp:                  # ✅ log 空间比接受率，防下溢
        th, lp = prop, lpp
        acc += 1
    if i >= burn:
        out[i - burn] = th
print("后验均值:", out.mean(0).round(2), " 95% CI:", np.percentile(out, [2.5, 97.5], axis=0).round(2))
print(f"接受率 {acc / n_iter:.2f}（理想 0.2–0.5；过高调大 step、过低调小）")
# ⚠️ 多维后验别手写 MH 硬扛：相关性会让它卡局部，换 Gibbs 或直接上 PyMC 的 NUTS
```

### 收敛诊断：R̂ 与 ESS 简版实现——采完样先过这三关再谈后验

burn-in 不丢、R̂ 不查就报后验均值，是 MCMC 最常见的翻车姿势。split-R̂ 检查多条链是否"混合"，ESS 惩罚相关样本（MH 输出的有效信息远低于样本量）：

```python
import numpy as np
rng = np.random.default_rng(0); n = 2000
# 链 A：目标分布 N(0,1) 附近的一阶相关 MH 型输出
chainA = np.empty(n); chainA[0] = 0.0
for t in range(1, n):
    chainA[t] = 0.9 * chainA[t - 1] + np.sqrt(1 - 0.9**2) * rng.normal()
# 链 B：初值 8，前 500 步是向目标分布爬坡的瞬态（= burn-in 该丢的部分）
chainB = np.concatenate([np.linspace(8, 0, 500), rng.normal(0, 1, size=n - 500)])
def split_rhat(chains):                                  # split-R̂ ≈1（<1.01）才算混合
    h = chains.shape[1] // 2
    parts = np.concatenate([chains[:, :h], chains[:, h:2 * h]])   # 各链切半再拼平
    means, variances = parts.mean(1), parts.var(1, ddof=1)
    W, B = variances.mean(), h * means.var(ddof=1)
    return np.sqrt(((h - 1) / h * W + B / h) / W)
def ess(chain):                                          # ESS = n / (1 + 2Σρk)，截断在首个负自相关
    x = chain - chain.mean()
    acf = np.correlate(x, x, 'full')[len(x) - 1:] / (x.var() * len(x))
    cut = np.argmax(acf[1:] < 0) + 1
    return len(x) / (1 + 2 * acf[1:cut].sum())
both = np.vstack([chainA, chainB])
print(f"含爬坡期           R̂ = {split_rhat(both):.3f}  ← >1.01 不过关，绝不能直接用")
print(f"各丢 500 burn-in 后 R̂ = {split_rhat(both[:, 500:]):.4f}  ← ≈1 才可采信")
print(f"链 A 的 ESS/长度 = {ess(chainA) / n:.2f}  ← MH 产相关样本，有效信息打折")
# ⚠️ 两条 trace 长得像 ≠ 收敛：多峰后验单链会卡局部；R̂<1.01 + ESS 充足 + trace 图三关都过再下结论
```

### 贝叶斯模型比较 / 贝叶斯因子 (Bayes Factor)——给"哪个模型更可信"记证据账

边缘似然 p(D|M) 是"模型 M 生成这份数据的概率"，两个模型的边缘似然之比即贝叶斯因子，自动惩罚过度复杂。它没有闭式解时靠数值积分/采样获得——注意全程 log 空间：

```python
import numpy as np
from scipy import integrate, stats
k, n = 1, 10                                             # 同一份数据：10 笔 1 违约
def log_ml(a, b):
    """log 边缘似然 = log ∫ p(D|θ)p(θ)dθ；quad 数值积分，非共轭模型同款路径"""
    integ = lambda t: np.exp(stats.beta(a, b).logpdf(t) + stats.binom.logpmf(k, n, t))
    val, _ = integrate.quad(integ, 1e-12, 1 - 1e-12)
    return np.log(val)
bf = np.exp(log_ml(2.0, 20.0) - log_ml(1.0, 1.0))        # ✅ log 空间做差再 exp，防下溢
print(f"log ML: 信息先验 {log_ml(2.0, 20.0):.3f} vs 平先验 {log_ml(1.0, 1.0):.3f}")
print(f"BF₁₂ = {bf:.2f}  ← 数据相对更支持模型 1（信息先验版）")
# ⚠️ 边缘似然对先验敏感：换先验可能反转结论，必须报告先验敏感性，不能只甩一个 BF 数字
# ⚠️ 后验样本已有时更常用 WAIC/LOO（ArviZ 一行 az.waic/az.loo），复杂模型别硬算边缘似然
```

## 需安装（示例不进可运行块）

### PyMC + ArviZ——生产级 MCMC 与诊断三件套

> **需 pip install pymc arviz**。手写 MH 适合理解原理与小维数演示；生产推断用 PyMC 的 NUTS（自适应步长与质量矩阵）+ ArviZ 诊断，别重复造轮子。

```python
# 需 pip install pymc arviz
import pymc as pm
import arviz as az
with pm.Model():
    b0 = pm.Normal("b0", 0, 2)
    b1 = pm.Normal("b1", 0, 2)
    pm.Bernoulli("obs", logit_p=b0 + b1 * x, observed=y)   # x, y 为上方分类数据
    idata = pm.sample(2000, chains=4)                    # NUTS：4 条链自动调步长
az.summary(idata, var_names=["b0", "b1"])                # 看 r_hat<1.01 且 ess_bulk>400 才采信
az.plot_trace(idata)                                     # trace 图 + 后验密度目检多峰/卡死
```

## 反模式（代码级翻车）

- ❌ 原始概率空间写 `p(θ)·p(D|θ)` 连乘更新或接受判断 `u < p_prop / p_cur` → ✅ 全程 log 空间：`logpdf + logpmf` 累加、接受判断 `np.log(u) < lp_prop - lp_cur`；连乘 100 项后验必下溢成 0
- ❌ Beta-Binomial 这类共轭对还手写采样器 → ✅ 先查共轭先验表：后验 = `Beta(a+k, b+n−k)` 闭式平移，一秒出答案，采样留给非共轭
- ❌ MH 跑完直接算后验均值，burn-in 不丢、收敛不查 → ✅ 丢弃前 ~25% 迭代 + ≥4 条不同初值链 split-R̂<1.01 + ESS 充足，三关都过再报数
- ❌ 一条链 trace "看起来挺平"就宣布收敛 → ✅ 两条链长得像≠收敛：多峰后验单链会卡局部模态，必须多链 + R̂
- ❌ 只报一个 BF 数字下结论 → ✅ 换先验重算报敏感性；结论随先验反转必须如实报告
- ❌ 高维（>5 维）后验继续手写 MH 硬扛 → ✅ 换 Gibbs / HMC / NUTS（PyMC、NumPyro）；随机游走 MH 在高维接受率与混合速度双崩

## 🔗 关联

- [domains/C4 贝叶斯统计](../domains/C-概率统计与随机/C4-贝叶斯统计.md)（本卡主域）· [domains/C2 统计推断](../domains/C-概率统计与随机/C2-统计推断.md)（MLE 与贝叶斯的频率派对照）· [domains/C5 随机过程](../domains/C-概率统计与随机/C5-随机过程.md)（MCMC 背后的马尔可夫链理论）· [domains/D4 蒙特卡洛方法](../domains/D-数值优化与ML与符号/D4-蒙特卡洛方法.md)（重要性采样/方差缩减）
- 场景档：[scenarios/04 不确定性/推断/决策](../scenarios/04-不确定性与统计推断.md)
- 相邻 recipes 卡：`06-概率分布与统计检验`（分布族与频率派检验）· `07-回归与多元统计`（同一 logistic 模型的 MLE 视角）· `09-时间序列建模`（贝叶斯结构时序/状态空间）
