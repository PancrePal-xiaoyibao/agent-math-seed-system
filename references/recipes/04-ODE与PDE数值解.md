# 🧮 code-recipe · 04 ODE 与 PDE 数值解

> **激活词**（import 锚点）：`import numpy as np` + `from scipy.integrate import solve_ivp` —— 任务里出现"微分方程数值解、ODE/PDE、演化/时间推进、刚性、步长、收敛阶、热方程、波动、对流、CFL、稳定性"任一信号，锚定本卡。
> **覆盖工具**（4 条）：
> - 欧拉法 / 龙格–库塔法（RK4）/ 刚性方程与隐式法 → [domains/B4-常微分方程](../domains/B-分析与微分方程/B4-常微分方程.md)
> - 有限差分法与 CFL 条件 → [domains/B5-偏微分方程](../domains/B-分析与微分方程/B5-偏微分方程.md)
> **运行环境**：numpy、scipy（预装即可，本卡无「需安装」条目）

---

## 模板代码

### 欧拉法 (Euler Method)——最简显式积分，步长是硬约束

`y←y+h·f(t,y)` 一步一阶精度，只配教学与原型。它对非刚性问题也会因步长过大而**振荡爆炸**——放大因子 `|1+h·λ|>1` 即失稳，与问题刚不刚性无关。

```python
import numpy as np
def euler(f, t0, y0, h, n):
    for _ in range(n):
        y0 = y0 + h * f(t0, y0)          # 显式欧拉：当前斜率线性外推，一阶精度
        t0 += h
    return y0
f = lambda t, y: -y                      # y′=−y，精确解 e^{−t}
for h, n in ((0.5, 6), (1.5, 2), (2.5, 6)):
    print(f"h={h:<4} y≈{euler(f, 0.0, 1.0, h, n):>10.4f}  真值 {np.exp(-3):.4f}")
# h=2.5：每步放大因子 |1−h|=1.5>1 → 振荡爆炸；显式格式的步长是稳定性硬约束
# ⚠️ 验证精度必须做步长减半收敛测试（见下节），绝不能拿单步长结果下结论
```

### 龙格–库塔法 (Runge–Kutta / RK4)——光滑非刚性问题的默认手写格式

每步采样四个斜率加权，四阶精度；同一步长下误差比欧拉低几个数量级。理解原理用手写版，生产环境一律 `solve_ivp`（自适应步长 + 误差控制）。

```python
import numpy as np
def rk4(f, t0, y0, h, n):
    for _ in range(n):
        k1 = f(t0, y0)
        k2 = f(t0 + h/2, y0 + h/2 * k1)
        k3 = f(t0 + h/2, y0 + h/2 * k2)
        k4 = f(t0 + h,   y0 + h * k3)
        y0 += h / 6 * (k1 + 2*k2 + 2*k3 + k4)   # 四斜率加权，四阶精度
        t0 += h
    return y0
f = lambda t, y: -y
print(f"{rk4(f, 0.0, 1.0, 0.5, 6):.6f}", f"{np.exp(-3):.6f}")
# h=0.5 时 RK4 误差 ~1e-4，同 h 欧拉 ~3e-2
# ⚠️ 四阶的前提是 f 光滑：不连续/强刚性时 RK4 会"假收敛"或步长被迫极小 → 换隐式（见下节）
```

### 步长减半收敛测试 (Step-halving Convergence Test)——数值结果唯一可信的凭证

任何手写/新配置的积分器，交付前必做：步长逐次减半，误差应按 `2^p` 缩小（p 为方法阶数）。`p` 对不上 = 实现有 bug 或格式不稳定。Richardson 外推还能用相邻两解免费提精度。

```python
import numpy as np
def rk4_step(f, t, y, h):
    k1 = f(t, y); k2 = f(t + h/2, y + h/2*k1)
    k3 = f(t + h/2, y + h/2*k2); k4 = f(t + h, y + h*k3)
    return y + h/6 * (k1 + 2*k2 + 2*k3 + k4)
f = lambda t, y: -y
exact = np.exp(-1.0)
errs = []
for n in (5, 10, 20):                        # h = 0.2, 0.1, 0.05：步长逐次减半
    t, y, h = 0.0, 1.0, 1.0 / n
    for _ in range(n):
        y = rk4_step(f, t, y, h); t += h
    errs.append(abs(y - exact))
print([f"{e:.2e}" for e in errs])
print(f"观测收敛阶 p ≈ {np.log2(errs[0] / errs[1]):.1f}（RK4 应为 4）")
# ⚠️ 单步长结果永远别下结论：h→h/2 误差降 2^p 倍才可信
```

### 刚性方程与隐式法 (Stiff Equation & Implicit Methods)——solve_ivp 的方法选型

刚性 = 系统含相差悬殊的时间尺度：显式法被**最快**尺度锁死步长，哪怕慢分量才是你关心的。信号："解看起来很平稳，但 RK45 步长被迫极小"。解法：点名 `method='BDF'` 或 `'Radau'`（隐式，无条件稳定域内大步长照走）。

```python
import numpy as np
from scipy.integrate import solve_ivp
lam = -1000.0
f = lambda t, y: lam * (y - np.cos(t)) - np.sin(t)   # 精确解 y=cos t：快模态 e^{1000t} 秒衰
kw = dict(rtol=1e-6, atol=1e-9)
rk45  = solve_ivp(f, [0, 5], [1.0], method='RK45',  **kw)   # 默认显式：被稳定性锁步
bdf   = solve_ivp(f, [0, 5], [1.0], method='BDF',   **kw)   # 隐式多步：刚性首选
radau = solve_ivp(f, [0, 5], [1.0], method='Radau', **kw)   # 隐式 Runge–Kutta：更稳的备选
print(f"函数调用数：RK45 {rk45.nfev} | BDF {bdf.nfev} | Radau {radau.nfev}")
print(f"终值误差：RK45 {abs(rk45.y[0,-1]-np.cos(5)):.1e} | BDF {abs(bdf.y[0,-1]-np.cos(5)):.1e}")
# ⚠️ 隐式法赢在稳定域不在精度阶：rtol 仍要给够，别拿"稳定"当"精确"
```

陷阱规避写法（极端刚性：显式法步数爆炸 vs 隐式几十步完事；以及取解前的必查项）：

```python
import numpy as np
from scipy.integrate import solve_ivp
f = lambda t, y: -1e6 * (y - 1.0)             # 快速弛豫：λ=−1e6
s_expl = solve_ivp(f, [0, 0.5], [0.0], method='RK45')   # 显式：步长被稳定域锁死
s_impl = solve_ivp(f, [0, 0.5], [0.0], method='BDF')    # 隐式：大步长照样稳
print(len(s_expl.t), len(s_impl.t), s_impl.y[0, -1])
if s_impl.success:                            # ✅ 先查 success/message/status 再取 sol.t/sol.y
    print(f"隐式解已到稳态 y≈{s_impl.y[0, -1]:.4f}")
# ⚠️ 隐式法每步内部解非线性方程（Newton 迭代），不收敛时 solve_ivp 自动减步，持续失败换 Radau
```

### 有限差分法：显式热方程的稳定域 (Explicit Heat Equation)——违反 Δt≤Δx²/2α 即爆炸

用差商代替导数把 `u_t = α·u_xx` 化为网格推进。显式格式的稳定域是 `Δt ≤ Δx²/(2α)`（r=αΔt/Δx²≤0.5）——**Δx 减半则 Δt 要缩 4 倍**，违反即高频振荡指数放大、全盘报废。

```python
import numpy as np
nx, alpha, L, nsteps = 51, 1.0, 1.0, 300
dx = L / (nx - 1)
u0 = np.exp(-200 * (np.linspace(0, L, nx) - 0.3)**2)   # 初值：高斯热脉冲
def step_heat(u, r):                          # 显式格式：u += r·(u[i-1]−2u[i]+u[i+1])
    return u + r * (np.roll(u, 1) - 2 * u + np.roll(u, -1))   # np.roll = 周期边界
for dt in (0.4 * dx**2 / (2 * alpha), 1.1 * dx**2 / (2 * alpha)):
    u = u0.copy()
    for _ in range(nsteps):
        u = step_heat(u, alpha * dt / dx**2)
    print(f"r={alpha * dt / dx**2:.2f}  max|u|={np.abs(u).max():.3e}")
# r=0.2：平滑耗散（热的本性）；r=0.55：>0.5 稳定域外 → 振荡放大 13 个数量级（实测 max|u|≈1.6e13）
# ⚠️ 生产环境用隐式（backward Euler / Crank–Nicolson）保无条件稳定，摆脱 Δt~Δx² 诅咒
```

### CFL 条件 (Courant–Friedrichs–Lewy Condition)——对流/波动格式的推进前检查

双曲问题（对流 `u_t + c·u_x = 0`、波动方程）显式格式的稳定域是 CFL 条件 `ν = c·Δt/Δx ≤ 1`：一个时间步内信息不能跑超过一个网格。违反即振荡爆炸，且事后无法修复——必须推进前算。

```python
import numpy as np
nx, c, L, nsteps = 101, 1.0, 1.0, 80
dx = L / nx
x = np.linspace(0, L, nx, endpoint=False)
u0 = np.exp(-100 * (x - 0.25)**2)              # 初值：高斯波包，以速度 c 右传
def upwind(u, nu):                              # 一阶迎风：稳定要求 ν = c·Δt/Δx ≤ 1
    return u - nu * (u - np.roll(u, 1))
for nu in (0.8, 1.3):                           # CFL 边界两侧对照
    u = u0.copy()
    for _ in range(nsteps):
        u = upwind(u, nu)
    print(f"ν={nu}  max|u|={np.abs(u).max():.3e}")
# ν=0.8：稳定但一阶迎风有数值耗散（波峰被抹平，峰值 1→0.89）；ν=1.3：CFL 违反 → 振荡放大 12 个数量级（实测 max|u|≈1.8e12）
# ⚠️ 相容 + 稳定才收敛（Lax 等价定理）：格式"看起来对"不查稳定性是常见翻车
```

## 反模式（代码级翻车）

- ❌ 手写欧拉/RK4 循环跑生产仿真 → ✅ `solve_ivp`（自适应步长 + 误差控制 + 事件/稠密输出）；手写只用于教学与理解原理
- ❌ 单步长跑一遍就报"解好了" → ✅ 步长减半收敛测试：误差降 2^p 倍、p 与方法阶一致才可信；p 对不上先查实现
- ❌ 显式法算刚性问题时怪 scipy 慢、或调大 rtol 硬扛 → ✅ "解平稳但步长被迫极小" = 刚性信号，点名 `method='BDF'`/`'Radau'`（化学动力学/电路/边界层问题默认先怀疑刚性）
- ❌ 显式热方程凭直觉给 Δt（如 Δt=Δx/10） → ✅ 稳定域 Δt ≤ Δx²/(2α)：Δx 减半 Δt 缩 4 倍；生产用 Crank–Nicolson/隐式保无条件稳定
- ❌ 对流/波动显式格式不算 CFL 就推进，炸了再调 → ✅ 推进前先验 `ν = c·Δt/Δx ≤ 1`；CFL 违反的振荡污染无法事后修复
- ❌ `solve_ivp` 拿来就用、直接取 `sol.y` → ✅ 先查 `sol.success` / `sol.message` / `sol.status` 再取 `sol.t`/`sol.y`；失败信息会告诉你减步还是换方法

## 🔗 关联

- 域文件：[B4-常微分方程](../domains/B-分析与微分方程/B4-常微分方程.md) · [B5-偏微分方程](../domains/B-分析与微分方程/B5-偏微分方程.md) · [B6-动力系统与混沌](../domains/B-分析与微分方程/B6-动力系统与混沌.md)（相图/Lyapunov 指数的数值搭档）· [B1-微积分](../domains/B-分析与微分方程/B1-微积分.md)（泰勒展开：欧拉法误差分析的地基）
- 场景层：[大规模计算与精度危机](../scenarios/07-大规模计算与精度危机.md)（收敛阶、稳定域、病态问题的系统化清单）
- 相邻 recipes 卡：[03-微积分与数值积分](03-微积分与数值积分.md)（quad/求根：本卡的数值地基）· [01-线性代数与矩阵分解](01-线性代数与矩阵分解.md)（隐式 PDE 离散出的稀疏系统用 CG/GMRES 解）· [12-符号计算与自动微分](12-符号计算与自动微分.md)（符号推导雅可比再 lambdify 喂给积分器）
