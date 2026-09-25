# 🧮 数学工具种子库 (math-seeds) · 全量数据库（L1 总库速查）

> **定位**：按需调用的工具数据库（不是注入上下文的 prompt）。任何数学任务先到 `MATH.md` 走决策流程，需要时来这里查。
>
> **四层知识库导航**（重 agent 按需加载，禁止全文注入；子项均与本文件同目录）：
> - 🧭 决策层：`MATH.md`（按部署形态定位——仓库=本目录上级的 ../MATH.md；OpenClaw=workspace 根；Claude Code skill 形态=技能根的 SKILL.md；找不到按文件名全局定位）
> - 🎯 场景档：`scenarios/`（12 份，知道问题信号先查，拿主推工具组与翻车清单）
> - 💻 模板代码卡：`recipes/`（12 张，写代码落地直接抄，陷阱规避已写进注释）
> - 📚 域章档：`domains/`（4 域 27 子类文件，157 条全量六字段：一句话/何时用/输入输出/陷阱/代码锚点/参考）
> - ⚡ 本文件：全量单行速查总表（末尾「实测日志」记录工具实际使用成败，越用越准）
>
> **数据来源**：《面向智能体的数学工具索引》v1.0（2026-09-25，四域 157 工具）全量收录，无删减。
> **查询方式**：① 按域浏览 ② Ctrl+F 搜关键词/信号词 ③ 按场景选工具见 MATH.md 索引 ④ 需要模板代码按锚点进 recipes/ 卡。
> **每条记录**：工具名（English）· 子类 —— 一句话 ｜ 信号：触发词 ｜ 锚：库函数 → recipes 卡

---

## 一、代数与离散数学（40 工具 → domains/A-代数与离散/）

🧮 **四则运算与运算顺序** · 初代 —— 运算优先级与结合分配律，表达式化简的规则书 ｜ 信号：表达式化简·运算顺序·验算 ｜ 锚：math.fsum
🧮 **幂与根** · 初代 —— 指数律与分数指数，化简幂式与量级估算 ｜ 信号：指数律·开方·数量级 ｜ 锚：x**(1/n)·math.sqrt
🧮 **对数及其运算律** · 初代 —— 乘除变加减幂变系数的压缩器 ｜ 信号：对数似然·指数方程·对数量级 ｜ 锚：math.log(x, base)
🧮 **AM–GM 不等式** · 初代 —— 均值不等式，和积互求最值第一环 ｜ 信号：放缩·下界证明·最值 ｜ 锚：statistics.geometric_mean
🧮 **柯西–施瓦茨不等式** · 初代 —— 内积不超范数之积，放缩求最值 ｜ 信号：内积·夹角·放缩 ｜ 锚：np.dot·np.linalg.norm
🧮 **放缩与不等式证明** · 初代 —— 夹逼逐级替换，证上下界的技术总称 ｜ 信号：上下界·夹逼·误差估计 ｜ 锚：理论 → recipes/03
🧮 **数列与级数基础** · 初代 —— 等差等比通项求和与收敛判据 ｜ 信号：等比求和·复利·敛散 ｜ 锚：fractions.Fraction
🧮 **二项式定理** · 初代 —— 幂式展开读出组合系数 ｜ 信号：展开·组合系数·帕斯卡 ｜ 锚：math.comb
🧮 **韦达定理** · 初代 —— 根与系数对称关系，不解方程验根 ｜ 信号：根与系数·验算·对称函数 ｜ 锚：np.roots
🧮 **余式定理与多项式除法** · 初代 —— 余数即 f(a)，因式分解第一刀 ｜ 信号：验根·因式分解·多项式除法 ｜ 锚：np.polydiv → recipes/12
🧮 **矩阵运算** · 线代 —— 乘法即映射复合，不满足交换律 ｜ 信号：Ax=b·几何变换·维度匹配 ｜ 锚：A@B·A.T → recipes/01
🧮 **秩与行列式** · 线代 —— 秩是信息量，行列式是体积缩放因子 ｜ 信号：线性相关·可逆性·降维 ｜ 锚：np.linalg.matrix_rank → recipes/01
🧮 **逆矩阵** · 线代 —— 满秩才可逆，数值上别显式求逆 ｜ 信号：解方程·求逆·满秩 ｜ 锚：np.linalg.solve → recipes/01
🧮 **Moore–Penrose 伪逆** · 线代 —— 奇异长方阵的万能逆，最小范数解 ｜ 信号：欠定超定·秩亏·最小二乘 ｜ 锚：np.linalg.pinv → recipes/01
🧮 **特征值分解** · 线代 —— 方阵谱透镜，看长期行为与主方向 ｜ 信号：稳态·主成分·模态 ｜ 锚：np.linalg.eig → recipes/01
🧮 **奇异值分解（SVD）** · 线代 —— 任意矩阵低秩近似与降维的王者 ｜ 信号：降维·压缩去噪·矩阵补全 ｜ 锚：np.linalg.svd → recipes/01
🧮 **LU / QR / Cholesky 分解** · 线代 —— 三大数值分解选型 ｜ 信号：解方程组·最小二乘·正定采样 ｜ 锚：scipy.linalg.lu_factor → recipes/01
🧮 **二次型与正定性** · 线代 —— xᵀAx 符号判定，正定即各方向上坡 ｜ 信号：极值判定·凸性·协方差 ｜ 锚：np.linalg.eigvalsh → recipes/01
🧮 **投影与最小二乘** · 线代 —— 正交投影给最近点与正规方程 ｜ 信号：拟合·超定方程·残差 ｜ 锚：np.linalg.lstsq → recipes/07
🧮 **范数与条件数** · 线代 —— 定义长度并度量扰动放大倍数 ｜ 信号：正则化·误差界·数值稳定性 ｜ 锚：np.linalg.norm·np.linalg.cond → recipes/01
🧮 **群** · 抽代 —— 对称性的语言，四公理缺一不可 ｜ 信号：对称计数·密码学·状态空间 ｜ 锚：理论 → recipes/02
🧮 **环与域** · 抽代 —— 判定在哪套代数规则里干活能否除 ｜ 信号：模素数·系数域·纠错编码 ｜ 锚：理论 → recipes/02
🧮 **模运算** · 抽代 —— 只留余数的算术，循环与哈希底层 ｜ 信号：取模·哈希·循环结构 ｜ 锚：a%n·divmod → recipes/02
🧮 **置换** · 抽代 —— 重排映射分解为轮换，阶为最小公倍数 ｜ 信号：轮换分解·洗牌·对称枚举 ｜ 锚：itertools.permutations → recipes/02
🧮 **整除与素数** · 数论 —— 唯一分解定理是数论地基 ｜ 信号：判素·因子分解·互素 ｜ 锚：sympy.isprime·sympy.factorint
🧮 **欧几里得算法** · 数论 —— 快速 GCD，扩展版是模逆元钥匙 ｜ 信号：GCD·约分·模逆元 ｜ 锚：math.gcd → recipes/02
🧮 **素数筛** · 数论 —— 批量标出小素数，埃氏筛到线性筛 ｜ 信号：批量素数·预处理·筛法 ｜ 锚：理论 → recipes/02
🧮 **模幂运算** · 数论 —— O(log e) 算 aᵉ mod n 的引擎 ｜ 信号：大指数·密码学·循环规律 ｜ 锚：pow(a, e, n)
🧮 **中国剩余定理** · 数论 —— 模数互素时同余方程组唯一解 ｜ 信号：同余方程·多模约束·合并 ｜ 锚：sympy.ntheory.modular.crt
🧮 **费马小定理与欧拉函数** · 数论 —— 模逆元与降幂，RSA 数学根 ｜ 信号：模逆元·降幂·素性初筛 ｜ 锚：pow(a,p-2,p)·sympy.totient
🧮 **BFS 与 DFS 遍历（含图的表示）** · 离散 —— 图遍历骨架，层序深序两走法 ｜ 信号：最短路·连通分量·环检测 ｜ 锚：nx.bfs_edges → recipes/02
🧮 **Dijkstra 最短路** · 离散 —— 非负权单源最短路的贪心算法 ｜ 信号：最短路·导航·负权警报 ｜ 锚：nx.single_source_dijkstra → recipes/02
🧮 **最小生成树** · 离散 —— 最少代价连成一体，Kruskal/Prim ｜ 信号：布线·聚类·连通 ｜ 锚：nx.minimum_spanning_tree → recipes/02
🧮 **最大流与最小割** · 离散 —— 容量输送建模壳，流值等割容 ｜ 信号：网络流·最小割·建模 ｜ 锚：nx.maximum_flow → recipes/02
🧮 **二分图匹配** · 离散 —— 左右集合最大配对，匈牙利/HK ｜ 信号：任务分配·配对·二染色 ｜ 锚：nx.bipartite.maximum_matching → recipes/02
🧮 **排列与组合** · 离散 —— 有序无序两公式组合出一切计数 ｜ 信号：计数·排列组合·方案数 ｜ 锚：math.comb·itertools.combinations
🧮 **容斥原理** · 离散 —— 子集交替加减修正重复计数 ｜ 信号：重复计数·至少一个·补集转化 ｜ 锚：理论 → recipes/02
🧮 **生成函数** · 离散 —— 数列编码为幂级数，计数变代数 ｜ 信号：计数闭式·背包·整数分拆 ｜ 锚：sympy.series → recipes/12
🧮 **递推关系与主定理** · 离散 —— 递推闭式与分治复杂度速查 ｜ 信号：复杂度·递推通项·分治 ｜ 锚：sympy.rsolve → recipes/12
🧮 **证明方法：归纳、反证与构造** · 离散 —— 三大普适证明武器 ｜ 信号：归纳·反证·存在性构造 ｜ 锚：理论 → recipes/12

## 二、分析与微分方程（39 工具 → domains/B-分析与微分方程/）

🧮 **极限与洛必达法则 (Limit & L'Hôpital's Rule)** · 微积分 —— ε-δ 定极限，0/0 未定式用导数比代换 ｜ 信号：求lim·未定式·无穷小阶 ｜ 锚：sp.limit → recipes/12
🧮 **导数与数值微分 (Derivative & Numerical Differentiation)** · 微积分 —— 差分/自动微分求变化率，步长有最优值 ｜ 信号：求梯度·变化率·黑盒函数 ｜ 锚：sp.diff → recipes/12
🧮 **泰勒展开 (Taylor Series)** · 微积分 —— 光滑函数化多项式+余项，先查收敛域 ｜ 信号：近似计算·误差分析·求极限 ｜ 锚：sp.series → recipes/12
🧮 **换元积分与分部积分 (Integration by Substitution & by Parts)** · 微积分 —— 换元化简、分部转移导数，符号积分主力 ｜ 信号：复合函数·函数乘积·积不出 ｜ 锚：sp.integrate → recipes/12
🧮 **数值求积：梯形/Simpson/Gauss (Numerical Quadrature)** · 微积分 —— 节点加权和近似定积分，Gauss 达 2n 阶精度 ｜ 信号：无原函数·离散采样·机器精度 ｜ 锚：scipy.integrate.quad → recipes/03
🧮 **广义积分 (Improper Integral)** · 微积分 —— 无穷区间/奇点积分，收敛性分别判定 ｜ 信号：∞上限·奇点·归一化 ｜ 锚：scipy.integrate.quad → recipes/03
🧮 **级数收敛判别 (Convergence Tests)** · 实分析 —— 比值/根值/比较/积分判别流程，先查必要条件 ｜ 信号：级数收敛·余项估计·逐项求和 ｜ 锚：sp.Sum.is_convergent → recipes/12
🧮 **一致收敛 (Uniform Convergence)** · 实分析 —— 保证极限传递与逐项积分求导合法，逐点收敛不够 ｜ 信号：交换极限·逐项积分·函数项级数 ｜ 锚：理论 → recipes/03
🧮 **傅里叶级数 (Fourier Series)** · 实分析 —— 周期函数分解为正弦余弦和，间断点收敛到均值 ｜ 信号：周期信号·频谱分解·Gibbs ｜ 锚：sp.fourier_series → recipes/05
🧮 **傅里叶变换 (Fourier Transform)** · 实分析 —— 非周期信号连续频谱，卷积变乘积，注意归一化 ｜ 信号：频谱·平移不变系统·微分代数化 ｜ 锚：sp.fourier_transform → recipes/05
🧮 **离散傅里叶变换与快速算法 (DFT & FFT)** · 实分析 —— N 点采样映射离散频谱，FFT 是 O(N log N) 实现 ｜ 信号：频谱分析·快速卷积·频谱泄漏 ｜ 锚：np.fft.rfft → recipes/05
🧮 **广义函数与狄拉克 δ 函数 (Distribution & Dirac Delta Function)** · 实分析 —— 单位冲量广义函数，运算只在积分意义下 ｜ 信号：瞬时冲击·点源·脉冲响应 ｜ 锚：sp.DiracDelta → recipes/12
🧮 **解析函数与柯西–黎曼方程 (Analytic Function & Cauchy–Riemann Equations)** · 复分析 —— 实虚部满足 CR 方程才解析，解析自动无穷可微 ｜ 信号：复可微·调和函数·位势流 ｜ 锚：sp.diff → recipes/12
🧮 **留数定理 (Residue Theorem)** · 复分析 —— 围线积分=2πi 乘奇点留数和，算实积分杀手锏 ｜ 信号：围线积分·三角积分·奇点 ｜ 锚：sp.residue → recipes/12
🧮 **共形映射 (Conformal Map)** · 复分析 —— 解析函数局部保角，复杂区域变简单解边值 ｜ 信号：不规则边界·二维位势·区域标准化 ｜ 锚：理论 → recipes/12
🧮 **一阶方程：分离变量与积分因子 (First-Order ODE: Separable & Integrating Factor)** · ODE —— 可分离的分离积分，线性乘积分因子化全微分 ｜ 信号：指数增长·混合问题·RC电路 ｜ 锚：sp.dsolve → recipes/12
🧮 **二阶常系数线性方程 (Second-Order Constant-Coefficient Linear ODE)** · ODE —— 特征方程定通解加特解，振动与电路原型 ｜ 信号：弹簧阻尼·RLC·共振 ｜ 锚：sp.dsolve → recipes/12
🧮 **欧拉法 (Euler Method)** · ODE —— 当前斜率线性外推，一阶精度须做收敛测试 ｜ 信号：快速原型·教学·短时程 ｜ 锚：手写模板 → recipes/04
🧮 **龙格–库塔法 (Runge–Kutta Methods / RK4)** · ODE —— 多斜率加权四阶精度，光滑非刚性默认选择 ｜ 信号：高精度·工程仿真·非刚性 ｜ 锚：scipy.integrate.solve_ivp(method='RK45') → recipes/04
🧮 **刚性方程与隐式法 (Stiff Equation & Implicit Methods)** · ODE —— 多时间尺度显式步长被锁死，改隐式 BDF/Radau ｜ 信号：化学动力学·电路瞬态·边界层 ｜ 锚：scipy.integrate.solve_ivp(method='BDF') → recipes/04
🧮 **稳定性分析：平衡点/相图/Lyapunov 函数 (Stability Analysis: Equilibria, Phase Plane, Lyapunov Function)** · ODE —— Jacobian 特征值判局部稳定，临界情形用 Lyapunov 函数 ｜ 信号：系统停哪·稳定性·相图 ｜ 锚：np.linalg.eigvals → recipes/04
🧮 **热方程 (Heat Equation)** · PDE —— 扩散方程有瞬时平滑效应，显式格式步长受限 ｜ 信号：扩散·热传导·去噪 ｜ 锚：scipy.linalg.solve_banded → recipes/04
🧮 **波动方程 (Wave Equation)** · PDE —— 有限速度传播能量守恒，显式格式须满足 CFL ｜ 信号：声波·弦振动·传播 ｜ 锚：手写模板 → recipes/04
🧮 **拉普拉斯方程 (Laplace's Equation)** · PDE —— 椭圆型原型，最大值原理，解全局耦合 ｜ 信号：稳态·静电势·平衡场 ｜ 锚：scipy.sparse.linalg.spsolve → recipes/04
🧮 **分离变量法 (Separation of Variables)** · PDE —— 拆 ODE 族叠加特征函数，规则几何齐次边界才适用 ｜ 信号：规则几何·特征函数·模态分析 ｜ 锚：理论 → recipes/04
🧮 **有限差分法与 CFL 条件 (Finite Difference Method & CFL Condition)** · PDE —— 差商代导数化网格方程，相容+稳定才收敛 ｜ 信号：工程数值解·网格·显式推进 ｜ 锚：scipy.sparse.linalg.spsolve → recipes/04
🧮 **Logistic 映射 (Logistic Map)** · 动力 —— 一维也能混沌，轨道不可复现但统计性质稳 ｜ 信号：混沌·分岔图·种群模型 ｜ 锚：手写迭代 → recipes/04
🧮 **分岔理论 (Bifurcation Theory)** · 动力 —— 参数变化平衡点定性突变：鞍结/跨临界/叉式/Hopf ｜ 信号：失稳·迟滞·参数扫描 ｜ 锚：理论+扫描 → recipes/04
🧮 **吸引子 (Attractor)** · 动力 —— 轨迹长时趋向的不变集合，判吸引子须守恒量监控 ｜ 信号：长期行为·相空间·奇怪吸引子 ｜ 锚：scipy.integrate.solve_ivp → recipes/04
🧮 **Lyapunov 指数 (Lyapunov Exponent)** · 动力 —— 最大指数>0 即混沌，倒数是可预报时间尺度 ｜ 信号：混沌判定·可预报性·区分噪声 ｜ 锚：手写模板 → recipes/04
🧮 **赋范空间与 Banach 空间 (Normed Space & Banach Space)** · 泛函 —— 完备赋范空间，收敛论证必须先声明范数 ｜ 信号：迭代收敛·函数空间·完备性 ｜ 锚：理论 → recipes/10
🧮 **内积空间与 Hilbert 空间 (Inner Product Space & Hilbert Space)** · 泛函 —— 正交投影给最佳平方逼近，FEM 统一框架 ｜ 信号：正交分解·最佳逼近·Galerkin ｜ 锚：np.linalg.lstsq → recipes/07
🧮 **线性算子与谱定理 (Linear Operator & Spectral Theorem)** · 泛函 —— 自伴算子正交特征基实谱可对角化 ｜ 信号：PCA·振动模态·特征值病态 ｜ 锚：np.linalg.eigh → recipes/01
🧮 **卷积 (Convolution)** · 信号 —— 滑动加权叠加，LTI 输入输出关系，FFT 加速须补零 ｜ 信号：系统输出·图像滤波·FFT加速 ｜ 锚：np.convolve → recipes/05
🧮 **相关：自相关与互相关 (Autocorrelation & Cross-correlation)** · 信号 —— 相似度随延迟变化，自相关变换是功率谱 ｜ 信号：周期检测·匹配滤波·功率谱 ｜ 锚：np.correlate → recipes/05
🧮 **采样定理 (Nyquist–Shannon Sampling Theorem)** · 信号 —— fs>2f_max 才无失真重建，先抗混叠再采样 ｜ 信号：采样率·重建·重采样 ｜ 锚：scipy.signal.butter → recipes/05
🧮 **混叠 (Aliasing)** · 信号 —— 高频折叠伪装低频，时域不可见只能重采不能补救 ｜ 信号：伪低频·摩尔纹·FFT伪峰 ｜ 锚：np.fft.fftfreq → recipes/05
🧮 **窗函数 (Window Function)** · 信号 —— 加窗压泄漏代价主瓣展宽，幅值按相干增益校正 ｜ 信号：频谱泄漏·非整周期·FIR设计 ｜ 锚：np.hanning → recipes/05
🧮 **小波变换 (Wavelet Transform)** · 信号 —— 多分辨率时频分析，低频看全貌高频看细节 ｜ 信号：非平稳·突变检测·去噪 ｜ 锚：— → recipes/05

## 三、概率统计与随机过程（40 工具 → domains/C-概率统计与随机/）

🧮 **条件概率与全概率公式 (Conditional Probability & Law of Total Probability)** · 概率 —— 已知信息下更新概率，分情况加权拆解复杂事件 ｜ 信号：条件概率·分场景汇总·检察官谬误 ｜ 锚：np.dot → recipes/06
🧮 **贝叶斯定理 (Bayes' Theorem)** · 概率 —— 先验×似然→后验，数据更新信念的标准机制 ｜ 信号：后验更新·基率谬误·先验 ｜ 锚：理论 → recipes/06
🧮 **二项分布 (Binomial Distribution)** · 概率 —— n 次独立成败试验中成功次数的分布 ｜ 信号：成败计数·转化率·违约只数 ｜ 锚：scipy.stats.binom.pmf → recipes/06
🧮 **泊松分布 (Poisson Distribution)** · 概率 —— 单位时间随机事件发生次数，参数仅 λ ｜ 信号：计数数据·订单数·事件到达 ｜ 锚：scipy.stats.poisson.pmf → recipes/06
🧮 **几何分布与超几何分布 (Geometric & Hypergeometric)** · 概率 —— 首次成功等待次数；不放回抽样命中数 ｜ 信号：等待次数·不放回抽样·命中概率 ｜ 锚：scipy.stats.geom.pmf → recipes/06
🧮 **正态分布 (Normal / Gaussian)** · 概率 —— μ、σ² 刻画的钟形分布，CLT 极限形态 ｜ 信号：误差建模·置信区间·收益率近似 ｜ 锚：scipy.stats.norm.pdf → recipes/06
🧮 **指数分布与 Gamma 族 (Exponential & Gamma)** · 概率 —— 等待时间分布；k 段等待之和；卡方特例 ｜ 信号：等待时间·寿命·违约间隔 ｜ 锚：scipy.stats.expon → recipes/06
🧮 **三大抽样分布：t、卡方、F (Student's t, Chi-squared & F)** · 概率 —— 三个基准分布，均值方差推断的基石 ｜ 信号：小样本推断·拟合优度·方差比 ｜ 锚：scipy.stats.t.ppf → recipes/06
🧮 **大数定律与中心极限定理 (LLN & CLT)** · 概率 —— 样本均值收敛；波动近似正态误差 σ/√n ｜ 信号：蒙特卡洛误差·模拟次数·收敛性 ｜ 锚：np.mean → recipes/11
🧮 **矩与矩生成函数 (Moments & MGF)** · 概率 —— 各阶矩概括分布特征；MGF 生成矩定分布 ｜ 信号：偏度峰度·高阶矩风险·分布概括 ｜ 锚：scipy.stats.skew → recipes/06
🧮 **最大似然估计 (MLE)** · 推断 —— 选让数据出现概率最大的参数，频率派默认引擎 ｜ 信号：参数拟合·分布校准·似然 ｜ 锚：scipy.stats.norm.fit → recipes/06
🧮 **矩估计与无偏性 (Method of Moments)** · 推断 —— 样本矩=总体矩解参数，闭式秒算初值 ｜ 信号：快速估计·初值·无偏性 ｜ 锚：np.mean → recipes/06
🧮 **置信区间 (Confidence Interval)** · 推断 —— 用区间量化估计不确定性，重复抽样盖住真值 ｜ 信号：误差多大·区间估计·收益率区间 ｜ 锚：scipy.stats.norm.interval → recipes/06
🧮 **假设检验与 p 值 (Hypothesis Testing & p-value)** · 推断 —— 原假设下算极端数据概率，据 α 拒绝与否 ｜ 信号：显著性·A/B 测试·多重比较 ｜ 锚：scipy.stats.ttest_ind → recipes/06
🧮 **方差分析 (ANOVA)** · 推断 —— F 统计量比较多组均值，方差组间组内分解 ｜ 信号：多组比较·分组差异·F 检验 ｜ 锚：scipy.stats.f_oneway → recipes/06
🧮 **Bootstrap 自助法 (Bootstrapping)** · 推断 —— 有放回重抽样近似抽样分布，免分布假设 ｜ 信号：无闭式标准误·小样本·置信区间 ｜ 锚：scipy.stats.bootstrap → recipes/06
🧮 **线性回归与 OLS 诊断 (Linear Regression / OLS)** · 回归 —— 最小残差平方和拟合线性关系+完整诊断体系 ｜ 信号：边际效应·beta 估计·因子暴露 ｜ 锚：statsmodels.api.OLS → recipes/07
🧮 **逻辑回归 (Logistic Regression)** · 回归 —— sigmoid 映射概率，极大似然二分类建模 ｜ 信号：违约概率·二分类·评分卡 ｜ 锚：sklearn.linear_model.LogisticRegression → recipes/07
🧮 **Ridge 与 Lasso 正则化 (Ridge & Lasso)** · 回归 —— L2 压缩抗共线，L1 稀疏兼选变量 ｜ 信号：因子多样本少·共线性·变量选择 ｜ 锚：sklearn.linear_model.RidgeCV → recipes/07
🧮 **主成分分析 (PCA)** · 回归 —— 协方差阵特征分解，相关变量压缩成主成分 ｜ 信号：降维·正交因子·曲线主成分 ｜ 锚：sklearn.decomposition.PCA → recipes/07
🧮 **K-means 与高斯混合 (K-means & GMM)** · 回归 —— 距离平方和划分样本；EM 估计软分配概率 ｜ 信号：市场分群·regime 聚类·客户分层 ｜ 锚：sklearn.cluster.KMeans → recipes/07
🧮 **先验、后验与共轭先验 (Prior, Posterior & Conjugate Priors)** · 贝叶斯 —— 先验×似然→后验，共轭族闭式可算 ｜ 信号：小样本先验·流式更新·A/B 监控 ｜ 锚：scipy.stats.beta → recipes/08
🧮 **MCMC：Metropolis-Hastings 与 Gibbs (MCMC)** · 贝叶斯 —— 构造马尔可夫链长时间采样近似后验 ｜ 信号：后验无闭式·多维参数·收敛诊断 ｜ 锚：理论 → recipes/08
🧮 **贝叶斯模型比较 (Bayes Factor)** · 贝叶斯 —— 边缘似然之比/WAIC 比模型，自动罚复杂度 ｜ 信号：模型比选·贝叶斯因子·先验敏感 ｜ 锚：理论 → recipes/08
🧮 **泊松过程与更新过程 (Poisson Process & Renewal)** · 过程 —— 独立增量计数过程，指数间隔可推广 ｜ 信号：事件到达·计数过程·限价单流 ｜ 锚：rng.exponential → recipes/11
🧮 **马尔可夫链 (Markov Chain)** · 过程 —— 未来只依赖当前，转移矩阵驱动收敛平稳分布 ｜ 信号：状态转移·评级迁移·regime 切换 ｜ 锚：np.linalg.matrix_power → recipes/11
🧮 **鞅 (Martingale)** · 过程 —— 条件期望=当前值的公平游戏，无套利定价核心 ｜ 信号：风险中性·公平游戏·无套利 ｜ 锚：理论 → recipes/11
🧮 **布朗运动/维纳过程 (Brownian Motion / Wiener Process)** · 过程 —— 独立正态增量随机游走极限，定价原材料 ｜ 信号：价格演化·路径模拟·随机游走 ｜ 锚：np.cumsum → recipes/11
🧮 **随机积分与 Itô 引理 (Itô Calculus & Itô's Lemma)** · 过程 —— 链式法则+二阶修正，给随机过程做微积分 ｜ 信号：BSM 推导·衍生品 PDE·Itô 修正 ｜ 锚：sympy.diff → recipes/12
🧮 **SDE 与 Euler-Maruyama (SDE & Euler-Maruyama)** · 过程 —— dX=a dt+b dW 描述随机动态，离散数值解 ｜ 信号：路径模拟·利率过程·蒙特卡洛定价 ｜ 锚：手写模板 → recipes/11
🧮 **AR/MA/ARMA/ARIMA (ARIMA Models)** · 时序 —— 滞后组合建模平稳序列，差分处理趋势 ｜ 信号：短期预测·定阶·单变量序列 ｜ 锚：statsmodels ARIMA → recipes/09
🧮 **ADF 检验与 ACF/PACF (ADF Test, ACF & PACF)** · 时序 —— 查单位根、定阶数、暴露季节性与持续性 ｜ 信号：平稳性·自相关·伪回归 ｜ 锚：statsmodels adfuller → recipes/09
🧮 **GARCH 族 (GARCH / Generalized ARCH)** · 时序 —— 条件方差建自身滞后与平方残差，捕捉波动聚集 ｜ 信号：波动率聚集·VaR·波动预测 ｜ 锚：statsmodels het_arch → recipes/09
🧮 **状态空间模型与卡尔曼滤波 (Kalman Filter)** · 时序 —— 隐状态+带噪观测，线性高斯下递推最优估计 ｜ 信号：动态 beta·在线估计·Nowcasting ｜ 锚：statsmodels UnobservedComponents → recipes/09
🧮 **Granger 因果 (Granger Causality)** · 时序 —— X 滞后改善 Y 预测即引致，预测因果非结构因果 ｜ 信号：领先滞后·传导检验·预测因果 ｜ 锚：statsmodels grangercausalitytests → recipes/09
🧮 **熵：联合熵与条件熵 (Entropy, Joint & Conditional)** · 信息论 —— 香农熵度量不确定性，条件熵算剩余不确定性 ｜ 信号：信息量·随机程度·信息增益 ｜ 锚：scipy.stats.entropy → recipes/06
🧮 **KL 散度 (Kullback-Leibler Divergence)** · 信息论 —— 用 Q 近似 P 的信息损失，非负不对称 ｜ 信号：分布差异·变分目标·模型偏离 ｜ 锚：scipy.stats.entropy → recipes/06
🧮 **互信息 (Mutual Information)** · 信息论 —— 知道一个变量减少另一个多少不确定性，捕捉非线性 ｜ 信号：非线性依赖·特征选择·冗余度 ｜ 锚：sklearn mutual_info_regression → recipes/06
🧮 **交叉熵与极大似然 (Cross-Entropy & MLE)** · 信息论 —— 最小化交叉熵等价极大似然，分类损失之源 ｜ 信号：分类损失·模型校准·困惑度 ｜ 锚：sklearn.metrics.log_loss → recipes/06
🧮 **编码定理：信源编码与信道容量 (Source Coding & Channel Capacity)** · 信息论 —— 压缩下界是熵，低于容量速率可靠传输，MDL 直觉 ｜ 信号：压缩极限·信道容量·MDL ｜ 锚：理论 → recipes/08

## 四、数值 · 优化 · 机器学习 · 符号计算（38 工具 → domains/D-数值优化与ML与符号/）

🧮 **浮点算术与机器精度 (Floating-point & Machine Epsilon)** · 数分 —— IEEE 754 近似体系，ε 定相对误差基本尺度 ｜ 信号：浮点相等·累加误差·接近零 ｜ 锚：np.finfo(float).eps·math.isclose
🧮 **条件数 (Condition Number)** · 数分 —— 输入扰动的放大倍数，κ≈10^k 损 k 位有效数字 ｜ 信号：病态问题·解可靠性·共线性 ｜ 锚：np.linalg.cond → recipes/01
🧮 **二分法 (Bisection)** · 数分 —— 变号区间逐步砍半求根，慢但绝对可靠 ｜ 信号：保证求根·隐含波动率·兜底 ｜ 锚：scipy.optimize.brentq → recipes/10
🧮 **牛顿迭代法 (Newton's Method)** · 数分 —— 一阶泰勒反复更新，二次收敛看初值 ｜ 信号：快速求根·隐含波动率·IRLS ｜ 锚：scipy.optimize.newton → recipes/10
🧮 **多项式插值 (Lagrange Interpolation)** · 数分 —— n+1 点唯一定 n 次式，高次等距会龙格振荡 ｜ 信号：曲线插值·查表函数化·龙格现象 ｜ 锚：np.polyfit·BarycentricInterpolator → recipes/03
🧮 **样条插值 (Spline Interpolation)** · 数分 —— 分段低次拼 C² 光滑，稳但别外推 ｜ 信号：收益率曲线·波动率微笑·平滑轨迹 ｜ 锚：scipy.interpolate.CubicSpline → recipes/03
🧮 **最小二乘法 (Least Squares)** · 数分 —— 残差平方和最小化，回归与拟合基石 ｜ 信号：数据拟合·因子模型·正规方程 ｜ 锚：np.linalg.lstsq → recipes/01
🧮 **数值积分 (Quadrature)** · 数分 —— 节点加权和近似定积分，高维换蒙特卡洛 ｜ 信号：无原函数·期权正态项·边际似然 ｜ 锚：scipy.integrate.quad → recipes/03
🧮 **共轭梯度法 (Conjugate Gradient)** · 数分 —— 稀疏 SPD 迭代解法，只耗矩阵向量乘 ｜ 信号：稀疏系统·有限元·图拉普拉斯 ｜ 锚：scipy.sparse.linalg.cg → recipes/01
🧮 **特征值算法概览 (QR Algorithm)** · 数分 —— QR 迭代求全谱，LAPACK 核心引擎 ｜ 信号：PCA·谱聚类·稳定性分析 ｜ 锚：np.linalg.eigh → recipes/01
🧮 **凸性判定 (Convexity Check)** · 优化 —— 证得凸则局部即全局，选求解器第一问 ｜ 信号：凸非凸·Hessian·保凸运算 ｜ 锚：np.linalg.eigvalsh → recipes/10
🧮 **梯度下降家族 (SGD/Momentum/Adam)** · 优化 —— 沿负梯度迭代，Adam 自适应步长 ｜ 信号：深度学习训练·大规模回归·学习率 ｜ 锚：sklearn.linear_model.SGDRegressor → recipes/10
🧮 **牛顿法与拟牛顿 (Newton & BFGS/L-BFGS)** · 优化 —— 用曲率加速下降，L-BFGS 省内存 ｜ 信号：高精度收敛·模型校准·无约束优化 ｜ 锚：scipy.optimize.minimize → recipes/10
🧮 **KKT 条件 (Karush–Kuhn–Tucker)** · 优化 —— 约束最优的必要条件，凸时充分 ｜ 信号：拉格朗日·影子价格·SVM对偶 ｜ 锚：理论 → recipes/10
🧮 **线性规划单纯形 (LP Simplex)** · 优化 —— 沿顶点游走改进目标，实践极快 ｜ 信号：资源分配·运输排产·线性约束 ｜ 锚：scipy.optimize.linprog → recipes/10
🧮 **线性规划对偶 (LP Duality)** · 优化 —— 对偶给界等值，对偶变量即影子价格 ｜ 信号：灵敏度分析·影子价格·下界证明 ｜ 锚：scipy.optimize.linprog → recipes/10
🧮 **凸优化与二次规划 (Convex Opt & QP)** · 优化 —— 识别为凸即拿全局最优，QP 最常用 ｜ 信号：马科维茨·SVM·模型预测控制 ｜ 锚：scipy.optimize.minimize(SLSQP) → recipes/10
🧮 **模拟退火 (Simulated Annealing)** · 优化 —— 高温跳坑降温冻结的随机全局搜索 ｜ 信号：TSP·排班·非凸兜底 ｜ 锚：scipy.optimize.dual_annealing → recipes/10
🧮 **贝叶斯优化 (Bayesian Optimization)** · 优化 —— GP 代理+采集函数，贵目标几十次搞定 ｜ 信号：超参调优·黑盒优化·昂贵评估 ｜ 锚：sklearn.gaussian_process.GaussianProcessRegressor → recipes/10
🧮 **排队论 M/M/1 (M/M/1 Queue)** · 运筹 —— 泊松到达指数服务，ρ 近 1 队列爆炸 ｜ 信号：容量规划·API限流·等待时间 ｜ 锚：理论 → recipes/10
🧮 **马尔可夫决策过程 (MDP)** · 运筹 —— 序贯决策标准模型，值迭代求最优策略 ｜ 信号：库存补货·动态定价·强化学习 ｜ 锚：理论 → recipes/10
🧮 **动态规划与贝尔曼方程 (DP & Bellman)** · 运筹 —— 重叠子问题递推，最优子结构阶段决策 ｜ 信号：背包·美式期权行权·多期配置 ｜ 锚：functools.lru_cache → recipes/10
🧮 **蒙特卡洛直接采样 (Direct Monte Carlo)** · 蒙特卡洛 —— 样本均值估期望，误差 1/√N 与维度无关 ｜ 信号：期权定价·VaR·高维积分 ｜ 锚：np.random.default_rng → recipes/11
🧮 **重要性采样 (Importance Sampling)** · 蒙特卡洛 —— 提议分布采样按 p/q 重加权 ｜ 信号：稀有事件·离线评估·权重爆炸 ｜ 锚：手写权重模板 → recipes/11
🧮 **拒绝采样 (Rejection Sampling)** · 蒙特卡洛 —— 包络接受-拒绝，高维接受率崩塌 ｜ 信号：非常规分布·截断分布·难采样 ｜ 锚：手写循环(random.uniform) → recipes/11
🧮 **方差缩减 (Antithetic & Control Variates)** · 蒙特卡洛 —— 对偶配对与控制变量对冲随机性 ｜ 信号：路径依赖期权·仿真提速·省样本 ｜ 锚：手写(np.mean 配对) → recipes/11
🧮 **拟蒙特卡洛 (Quasi-Monte Carlo, QMC)** · 蒙特卡洛 —— Sobol 低差异序列，误差近 O(N⁻¹) ｜ 信号：高维积分·路径期权·敏感性分析 ｜ 锚：scipy.stats.qmc.Sobol → recipes/11
🧮 **偏差-方差权衡 (Bias–Variance Tradeoff)** · ML —— 泛化误差 U 形曲线，交叉验证定容量 ｜ 信号：过拟合欠拟合·正则强度·模型选型 ｜ 锚：sklearn.model_selection.cross_validate → recipes/07
🧮 **VC 维 (VC Dimension)** · ML —— 能打散的最大样本数，泛化理论界 ｜ 信号：样本复杂度·表达力·理论界 ｜ 锚：理论 → recipes/07
🧮 **核方法与 RKHS (Kernel Methods & RKHS)** · ML —— 核隐式映射高维，Gram 矩阵上学习 ｜ 信号：SVM·高斯过程·非线性拟合 ｜ 锚：sklearn.svm.SVR → recipes/07
🧮 **EM 算法 (Expectation–Maximization)** · ML —— E 步后验 M 步极大，似然单调不降 ｜ 信号：GMM聚类·隐变量·缺失数据 ｜ 锚：sklearn.mixture.GaussianMixture → recipes/07
🧮 **反向传播 (Backpropagation)** · ML —— 链式法则反向累积，一次扫描全参数梯度 ｜ 信号：神经网络·梯度检验·梯度消失 ｜ 锚：sympy.diff 核对 → recipes/12
🧮 **缩放点积注意力 (Scaled Dot-Product Attention)** · ML —— softmax(QKᵀ/√d)V，√d 防饱和 ｜ 信号：Transformer·序列建模·注意力权重 ｜ 锚：scipy.special.softmax → recipes/12
🧮 **万能逼近定理 (Universal Approximation)** · ML —— 单隐层足够宽可逼近任意连续函数 ｜ 信号：表达能力·存在性·概念澄清 ｜ 锚：理论 → recipes/12
🧮 **自动微分 (Automatic Differentiation)** · 符号 —— 链式法则精确传播导数，非数值差分 ｜ 信号：程序求导·训练网络·灵敏度分析 ｜ 锚：sympy.diff → recipes/12
🧮 **计算机代数系统 (SymPy / CAS)** · 符号 —— 符号级求导积分解方程，lambdify 转数值 ｜ 信号：推导校验·解析公式·表达式化简 ｜ 锚：sympy.diff·integrate·lambdify → recipes/12
🧮 **凸包 (Convex Hull)** · 几何 —— 包住点集的最小凸多边形，O(n log n) ｜ 信号：地理围栏·碰撞检测·离群点 ｜ 锚：scipy.spatial.ConvexHull → recipes/02
🧮 **Voronoi 图与 Delaunay 三角剖分 (Voronoi & Delaunay)** · 几何 —— 最近邻划分与三角剖分的对偶结构 ｜ 信号：最近设施·空间插值·网格生成 ｜ 锚：scipy.spatial.Voronoi/Delaunay → recipes/02

---

## 📈 实测日志（越用越准）

> 每次实际使用某工具后追加一行：日期 ｜ 工具 ｜ 场景 ｜ 成败与坑 ｜ 实测分（1-5，可选）。
> 格式：`- 2026-09-25 · Welch's t 检验 · A/B 测试显著性 · 方差不齐时比裸 t 检验稳，一次过 · 5`
> 定期把验证过的好用法同步回上游仓库；翻车的记坑与规避，下次优先复用好评语。
>
> —— 从下面这行开始追加 ——

