#1 面向智能体的数学工具索引（Mathematical Tools Index for AI Agents）
报告编号: MATH-INDEX-2026-0925-01
生成时间: 2026-09-25 19:20 (Asia/Shanghai)
研究复杂度: 复杂（四域并行调研 + 统一 schema 综合）
项目定位: "数学大脑"项目种子库 v1.0 —— 供"注入 + 薄 skill + 厚 reference"提示词框架开发使用
────────────────────────────────────────────────────────────
#2 执行摘要
研究目标:
系统性索引人类数学工具全景，从加减乘除到现代计算数学，整理成智能体可直接使用的种子库；
每个工具按统一 schema 描述（一句话 / 何时用 / 输入输出 / 陷阱 / 权威参考），使条目可直接转为提示词素材与 reference 文档。
主要发现:
共索引 157 个数学工具，覆盖四大域：代数与离散（40）、分析与微分方程（39）、概率统计与随机（40）、数值计算与优化（38）；
工具条目按"问题信号 → 工具选择"导向组织，而非教科书目录导向——每条回答"智能体在什么情况下该想起它"；
陷阱字段聚焦数值稳定性与常见误用（catastrophic cancellation、p 值误读、伪逆滥用等），这是智能体数学使用中的高频错误区。
结论（1-3 句话）:
人类数学工具可按"四域 28 子类"的粒度完整索引为约 150-200 个实用条目，本报告的 157 条构成可用起点；
该索引天然适合"注入层（问题信号速查）+ 薄 skill（工作流引导）+ 厚 reference（完整条目）"三层架构，与美学大脑框架同构。
可信度评估: 高（条目知识为数学稳定知识；参考链接以权威稳定页为主，验证策略见"研究方法·参考链接策略"节，D 域链接未经逐一在线核验已如实标注）
────────────────────────────────────────────────────────────
#2 研究方法
#3 团队分工（四收集员并行）
收集员
负责域
条目数
产出文件
A
算术代数 / 线性代数 / 抽象代数 / 数论 / 离散数学
40
domain-a-algebra-discrete.md
B
微积分 / 级数与傅里叶 / 复分析 / ODE·PDE / 动力系统 / 泛函 / 信号处理
39
domain-b-analysis-pde.md
C
概率 / 统计推断 / 回归多元 / 贝叶斯 / 随机过程 / 时间序列 / 信息论
40
domain-c-probability-stochastic.md
D'
数值分析 / 优化 / 运筹 / 蒙特卡洛 / ML 数学 / 符号计算 / 计算几何
38
domain-d-numerical-optimization-ml.md
#3 条目 schema（全部 157 条统一）
### 工具名（中文） (English Name)一句话 / 何时用（问题信号）/ 输入输出 / 陷阱（数值稳定性·常见误用）/ 参考（权威 URL 1-2 条）
schema 设计依据：面向智能体提示词工程——"何时用"字段本质是触发器（trigger），"陷阱"字段是护栏（guardrail），二者是 LLM 数学工具使用中最关键的两类信息；"一句话+输入输出"保证低 token 密度下可用。
#3 参考链接策略（诚实声明）
A/B/C 域：参考链接以英文 Wikipedia 规范条目、NIST DLMF、MIT OCW、官方文档为主；C 域非维基的 3 个来源（MIT OCW 18.05、statsmodels、NIST e-Handbook）经 HTTP 200 实测；
D 域（D' 重跑版）：为满足时限采用"凭确信直写"策略，链接均为长期稳定权威页但未逐一在线核验，开发使用时建议批量校验一次；
全部参考仅指向公开权威来源，无占位符、无编造链接（各收集员自检 + 主报告抽查）。
────────────────────────────────────────────────────────────
#2 工具统计总览
大域
子类覆盖
条目数
占比
一、代数与离散（domain-a）
算术代数 10 / 线代 10 / 抽象代数 4 / 数论 6 / 离散 10
40
25.5%
二、分析与微分方程（domain-b）
微积分 / 级数傅里叶 / 复分析 / ODE / PDE / 动力系统 / 泛函 / 信号
39
24.8%
三、概率统计与随机（domain-c）
概率 10 / 推断 6 / 回归多元 5 / 贝叶斯 3 / 随机过程 6 / 时序 5 / 信息论 5
40
25.5%
四、数值·优化·ML·符号（domain-d）
数值 / 优化 / 运筹 / 蒙特卡洛 / ML / 符号计算 / 计算几何
38
24.2%
合计
157
100%
────────────────────────────────────────────────────────────
#2 跨域工具地图（按智能体工作场景导航）
「用法：拿到问题时先看"问题信号"，定位到域与子类，再进对应章节找具体工具条目。」
问题信号（智能体日常）
首选域·章节
代表工具
结构化数据变换 / 关系推理
一·线代 / 一·图论
SVD、矩阵分解、图遍历、最短路
增长·变化·积累·振荡
二·微积分 / 二·ODE
泰勒展开、数值积分、RK4
周期信号 / 频域问题
二·傅里叶与信号
FFT、采样定理、卷积
不确定性 / 推断 / 决策
三·概率推断
贝叶斯定理、MLE、假设检验
预测时序 / 波动率
三·时间序列
ARIMA、GARCH、卡尔曼滤波
信息压缩 / 相似度 / 分布距离
三·信息论
熵、KL 散度、互信息
大规模计算 / 精度出问题
四·数值
条件数、迭代法、稳定的分解
拟合 / 调参 / 最优决策
四·优化与运筹
梯度下降家族、KKT、线性规划、DP
随机模拟 / 难解积分
四·蒙特卡洛
重要性采样、方差缩减、MCMC（三·贝叶斯）
学习类问题建模
四·ML 数学
偏差-方差、反向传播、核方法
精确符号推导 / 公式化简
四·符号计算
自动微分、CAS
离散结构 / 计数 / 可行性
一·组合图论 / 四·计算几何
生成函数、网络流、凸包
────────────────────────────────────────────────────────────
#2 "数学大脑"开发建议（本报告的使用方式）
注入层：跨域工具地图 + 各域"域总览"段落（每域开头 200 字）直接可做系统提示注入素材——让模型知道自己"有哪些数学肌肉"；
薄 skill：写一个 math-brain skill，工作流 = 问题信号识别 → 查本索引地图 → 调用对应工具条目 → 陷阱自检；skill 本体保持薄（决策树 + 指向 reference）；
厚 reference：四域文件即 reference 库（可再按子类拆分为 28 个小文件便于按需加载）；条目 schema 已对齐 LLM 友好密度；
迭代机制建议：参考 price-research-meta 的种子评分制——每次智能体实际用了某工具并成功/失败，回写条目"实测分"，索引越用越准；
工程提示：D 域链接建议入库前批量 HTTP 校验；后续可加"工具↔代码库"映射字段（numpy/scipy/sympy 函数名），让智能体从"知道工具"直达"能调工具"。
────────────────────────────────────────────────────────────
*以下为四个域的完整工具条目（157 条），schema 统一，可直接用作 reference 库。*
#1 第一部分：代数与离散数学（40 工具）
#1 域 A：代数与离散数学工具索引（Algebra &amp; Discrete Math Tools）
「智能体数学大脑 · 工具索引初稿 · 收集员 A」
「覆盖：算术与初等代数 / 线性代数与矩阵论 / 抽象代数要点 / 数论基础 / 离散数学」
#2 域总览
本域是智能体"数学大脑"的地基层。算术与初等代数（幂根对数、不等式放缩、数列级数、多项式）决定模型做数量级估算、化简表达式、证上下界的速度与准确度；线性代数与矩阵论是数据变换、几何直观与数值算法的通用语言，SVD、矩阵分解与条件数直接决定数值稳定性判断力；抽象代数与数论提供模运算、GCD、同余、中国剩余等精确离散计算工具，是密码学、哈希与循环问题的底层；离散数学（图论、组合计数、证明方法、递推与主定理）是结构化推理与算法设计的主战场。对智能体而言，每个工具的价值链是：识别问题信号 → 选对工具 → 避开已知陷阱。本索引按此目标组织，每条目给出信号、输入输出与一条最易踩的坑。
────────────────────────────────────────────────────────────
#2 一、算术与初等代数（Arithmetic &amp; Elementary Algebra）
#3 四则运算与运算顺序
一句话: 加减乘除及其优先级、结合律、分配律等运算律，是符号化简与表达式重排的规则书。
何时用: 表达式化简、验算、判断 a(b+c)=ab+ac 类变形合法性、解释 6÷2(1+2) 为何有歧义。
输入/输出: 算术表达式 → 按优先级求值的结果或等价重写式。
陷阱: 除号与隐式乘法混写（如 6÷2(1+2)）无统一约定，人与模型都应强制加括号；浮点运算不满足结合律，(a+b)+c ≠ a+(b+c) 可能差一位。
参考: https://en.wikipedia.org/wiki/Order_of_operations · https://en.wikipedia.org/wiki/Associative_property
#3 幂与根
一句话: 指数律 aᵐ·aⁿ=aᵐ⁺ⁿ、根号即分数指数，是化简幂式与量级估算的基础工具。
何时用: 复杂度比较（2ⁿ vs n²）、科学计数法、开方化简、判断大数落在哪个数量级。
输入/输出: 底数+指数表达式 → 化简后的幂或数值估计。
陷阱: 负数开偶次方在实数域无定义，多数语言 pow(-8, 1/3) 返回 NaN（需显式处理复根）；0⁰ 是约定，引用时声明。
参考: https://en.wikipedia.org/wiki/Exponentiation · https://en.wikipedia.org/wiki/Nth_root
#3 对数及其运算律
一句话: 把乘除变加减、幂变系数的压缩器：log(ab)=log a+log b，配合换底公式统一任何底。
何时用: 连乘转连加（对数似然）、解指数方程、解释 O(log n)、数量级比较。
输入/输出: 指数/连乘表达式 → 线性化对数式或数值。
陷阱: log 底的默认值随学科漂移（数学 ln、算法 log₂、工程 log₁₀），跨来源比较必须先统一底；log 0 与负数无定义。
参考: https://en.wikipedia.org/wiki/Logarithm · https://en.wikipedia.org/wiki/List_of_logarithmic_identities
#3 AM–GM 不等式
一句话: 算术平均 ≥ 几何平均（等号当各数相等），专杀"乘积固定求和最小 / 和固定求积最大"。
何时用: 优化题给定 xy 求最小 x+y、证明下界、放缩链的第一环。
输入/输出: 正数数组或约束优化式 → 上/下界 + 等号成立条件。
陷阱: 只对非负数成立；不验证等号条件（全员相等）就只能给界、给不出最优值。
参考: https://en.wikipedia.org/wiki/Inequality_of_arithmetic_and_geometric_means
#3 柯西–施瓦茨不等式
一句话: ⟨u,v⟩ ≤ ‖u‖‖v‖，内积不超过范数之积，等号当两向量共线。
何时用: 证 Σaᵢbᵢ ≤ √Σaᵢ²·√Σbᵢ²、相关性/夹角论证、放缩求最值。
输入/输出: 两个向量或两串数 → 一个上界不等式。
陷阱: 与 Titu 引理等柯西系变体混淆；等号条件是"成比例"而非"相等"。
参考: https://en.wikipedia.org/wiki/Cauchy%E2%80%93Schwarz_inequality
#3 放缩与不等式证明
一句话: 把未知量夹在已知界之间（夹逼）、逐级替换成更易处理表达式的证明技术总称。
何时用: 精确值难求时证上下界、极限计算（夹逼定理）、误差估计、复杂度证明。
输入/输出: 目标表达式 → 可证明的上下界链。
陷阱: 方向搞反（放大上界、缩小下界才安全）；连续放缩逐级损失精度，末尾可能夹出矛盾或"界"根本不紧。
参考: https://en.wikipedia.org/wiki/Inequality_(mathematics) · https://en.wikipedia.org/wiki/Squeeze_theorem
#3 数列与级数基础
一句话: 等差 aₙ=a₁+(n−1)d 与等比 aₙ=a₁qⁿ⁻¹ 的通项求和公式，及几何级数 |q|&lt;1 才收敛的判据。
何时用: 复利/分期/循环折扣、求和题、判断迭代过程收敛、把简单递推猜成闭式。
输入/输出: 通项或递推 → 求和/闭式/敛散结论。
陷阱: 等比求和 a₁(1−qⁿ)/(1−q) 在 q→1 失效（退化 n·a₁）；无穷几何级数 |q|≥1 直接发散，别套公式。
参考: https://en.wikipedia.org/wiki/Arithmetic_progression · https://en.wikipedia.org/wiki/Geometric_series
#3 二项式定理
一句话: (a+b)ⁿ = Σ C(n,k)aᵏbⁿ⁻ᵏ，展开幂式并读出组合系数的通用公式。
何时用: (1+x)ⁿ 展开、整除性证明、组合计数、帕斯卡恒等式。
输入/输出: 二项式幂 → 展开式或指定项系数。
陷阱: n 为非负整数才是有限和；广义二项式（非整数 n）要求 |x|&lt;1 收敛，直接套用会发散。
参考: https://en.wikipedia.org/wiki/Binomial_theorem
#3 韦达定理
一句话: 根与系数的关系：两根之和 = −b/a、两根之积 = c/a，高次推广到对称多项式。
何时用: 不解方程求根的对称函数（和/积）、验算求根结果、由已知根反构多项式。
输入/输出: 多项式系数 → 各根的对称函数值。
陷阱: 只给对称信息，单根不可定；复根情形照样成立，勿默认根为实数。
参考: https://en.wikipedia.org/wiki/Vieta%27s_formulas
#3 余式定理与多项式除法
一句话: f(x) 除以 (x−a) 的余数等于 f(a)，综合除法给出商式与余式，是因式分解的第一把刀。
何时用: 验根（f(a)=0 ⇔ 有因式 x−a）、因式分解、把分式拆成多项式+真分式。
输入/输出: 多项式 f 与除式 → 商式 q 与余式 r。
陷阱: 浮点系数代入验根有舍入误差，"接近 0"≠ 0；余式定理只对一次除式 (x−a) 直接适用。
参考: https://en.wikipedia.org/wiki/Polynomial_remainder_theorem · https://en.wikipedia.org/wiki/Euclidean_division
────────────────────────────────────────────────────────────
#2 二、线性代数与矩阵论（Linear Algebra &amp; Matrix Theory）
#3 矩阵运算
一句话: 矩阵加减、数乘、乘法（行×列）、转置的规则集，乘法是线性映射的复合且不满足交换律。
何时用: 线性方程组写成 Ax=b、批量几何变换、图邻接关系、线性映射复合。
输入/输出: 矩阵与运算 → 结果矩阵。
陷阱: AB≠BA；维度不匹配是最常见报错，先核对 (m×n)(n×p) 内标一致；浮点求值顺序影响末位精度。
参考: https://en.wikipedia.org/wiki/Matrix_multiplication · https://en.wikipedia.org/wiki/Matrix_(mathematics)
#3 秩与行列式
一句话: 秩 = 线性无关行/列数（信息量），行列式 = 体积缩放因子，det=0 ⇔ 压扁空间/不可逆。
何时用: 判方程组解的结构、判向量组线性相关性、快速查可逆性、判断变换是否降维。
输入/输出: 矩阵 → 秩（整数）+ 行列式（标量）。
陷阱: 浮点行列式"接近 0"不可靠，数值判断秩应看 SVD 奇异值阈值或条件数，而非裸 det。
参考: https://en.wikipedia.org/wiki/Rank_(linear_algebra) · https://en.wikipedia.org/wiki/Determinant
#3 逆矩阵
一句话: 满足 A⁻¹A=I 的矩阵，存在 ⇔ 满秩（det≠0），理论上"解"方程 x=A⁻¹b。
何时用: 符号推导、小规模精确求逆、变换的逆操作。
输入/输出: 可逆方阵 → 逆矩阵。
陷阱: 数值计算几乎不应显式求逆（慢且不稳），解 Ax=b 用 LU 分解；"先 inv 再乘"是经典反模式。
参考: https://en.wikipedia.org/wiki/Invertible_matrix
#3 Moore–Penrose 伪逆
一句话: 把逆推广到奇异/长方矩阵，给出最小范数最小二乘解的万能算子。
何时用: 欠定/超定方程组、秩亏矩阵、线性回归闭式解 (XᵀX)⁻¹Xᵀy 的安全替代。
输入/输出: 任意矩阵 → 伪逆矩阵。
陷阱: 数值实现经 SVD 截断小奇异值，阈值选取影响结果；解不唯一（秩亏）时"这个解"只是最小范数解。
参考: https://en.wikipedia.org/wiki/Moore%E2%80%93Penrose_inverse
#3 特征值分解
一句话: 方阵 A=QΛQ⁻¹：特征向量方向只被拉伸 λ 倍，是看长期行为与主方向的谱透镜。
何时用: 矩阵幂与稳态（PageRank、马尔可夫链）、振动/微分方程主模态、主成分方向。
输入/输出: 方阵 → 特征值 + 特征向量。
陷阱: 仅方阵可谈；非对称阵特征值可为复数；重特征值时可能不可对角化（几何重数 &lt; 代数重数）。
参考: https://en.wikipedia.org/wiki/Eigenvalues_and_eigenvectors · https://en.wikipedia.org/wiki/Eigenvalue_algorithm
#3 奇异值分解（SVD）
一句话: 任意矩阵 A=UΣVᵀ，按奇异值从大到小截断即得最优低秩近似。
何时用: 降维（PCA）、压缩去噪、伪逆、推荐系统矩阵补全、任意矩阵的"谱分析"。
输入/输出: 任意 m×n 矩阵 → U/Σ/V 与低秩截断。
陷阱: 截断阈值须按噪声水平定；截断后最优近似误差 = 被丢弃奇异值平方和开根，不是零误差。
参考: https://en.wikipedia.org/wiki/Singular_value_decomposition
#3 LU / QR / Cholesky 分解
一句话: 三大数值分解选型：LU 通用解方程组、QR 正交稳定专攻最小二乘、Cholesky 对称正定最快。
何时用: 解 Ax=b（LU+选主元）、线性回归/拟合（QR）、协方差与核矩阵采样（Cholesky）。
输入/输出: 矩阵 → 三角/正交因子乘积。
陷阱: Cholesky 遇非正定报错——这是有用的诊断信号而非 bug；LU 不选主元会遇零除且精度劣化。
参考: https://en.wikipedia.org/wiki/LU_decomposition · https://en.wikipedia.org/wiki/Cholesky_decomposition
#3 二次型与正定性
一句话: xᵀAx 的符号由特征值或顺序主子式（Sylvester 准则）判定，正定 = 各方向都"上坡"。
何时用: 判断极值（Hessian 正定⇒局部极小）、优化凸性判定、协方差矩阵合法性检查。
输入/输出: 对称矩阵 → 正定/半正定/不定判定。
陷阱: 只对对称矩阵谈正定；用主子式判定必须查全部顺序主子式，漏查高阶会误判。
参考: https://en.wikipedia.org/wiki/Positive-definite_matrix · https://en.wikipedia.org/wiki/Quadratic_form
#3 投影与最小二乘
一句话: 向量到子空间的正交投影给出最近点，残差⊥列空间 ⇒ 正规方程 AᵀAx=Aᵀb。
何时用: 超定方程、直线/平面拟合、把"不可达目标"化为"可达最近"。
输入/输出: 向量+子空间（矩阵列空间）→ 投影点/拟合参数。
陷阱: 组装 AᵀA 使条件数平方，病态问题改用 QR 或 SVD；投影公式要求 A 列满秩。
参考: https://en.wikipedia.org/wiki/Projection_(linear_algebra) · https://en.wikipedia.org/wiki/Least_squares
#3 范数与条件数
一句话: 范数定义"长度"（L1/L2/L∞/Frobenius），条件数 κ(A) 度量扰动被放大的倍数。
何时用: 正则化选型（L1 稀疏 / L2 平滑）、误差界分析、回答"这个数值答案还能信几位的"。
输入/输出: 向量/矩阵 → 范数标量；矩阵 → 条件数。
陷阱: κ&gt;1e8 量级时双精度可能只剩约 8 位有效数字，先看 κ 再信答案；不同范数之间数值不可直接比较。
参考: https://en.wikipedia.org/wiki/Norm_(mathematics) · https://en.wikipedia.org/wiki/Condition_number
────────────────────────────────────────────────────────────
#2 三、抽象代数要点（Abstract Algebra Essentials）
#3 群
一句话: 封闭、结合、有单位元、每个元素有逆元的"集合+运算"，是刻画对称性的语言。
何时用: 旋转/翻转对称计数、密码学（椭圆曲线、模乘群）、魔方/拼图状态空间分析。
输入/输出: 集合与运算 → 群公理判定/元素的阶/子群结构。
陷阱: 别默认交换（交换是 Abel 群的额外性质）；四条公理逐条验证，"有逆"最常被漏查。
参考: https://en.wikipedia.org/wiki/Group_(mathematics)
#3 环与域
一句话: 环允许加减乘（除法未必有），域四则俱全（ℚ、ℝ、ℤₚ），决定"在哪套代数规则里干活"。
何时用: 选多项式系数域、模素数算术（ℤₚ 是域故可求逆）、纠错编码。
输入/输出: 代数结构 → 可用运算清单（核心问题：能否除）。
陷阱: ℤₙ 仅当 n 为素数才是域，ℤ₁₂ 里绝大多数"除法"不存在；有零因子的环上乘积为零推不出因子为零。
参考: https://en.wikipedia.org/wiki/Ring_(mathematics) · https://en.wikipedia.org/wiki/Field_(mathematics)
#3 模运算
一句话: 只保留余数的算术：(a+b) mod n = ((a mod n)+(b mod n)) mod n，四则封闭。
何时用: 循环结构（时钟/星期）、哈希、密码学、整除判定、大数运算防溢出。
输入/输出: 整数与模数 n → 余数类。
陷阱: 负数取模各语言行为不同（Python 结果非负，C/Java 符号随被除数）；模世界里没有除法，只有乘逆元。
参考: https://en.wikipedia.org/wiki/Modular_arithmetic
#3 置换
一句话: n 个元素的重排映射，可唯一分解为不相交轮换，其阶 = 各轮换长的最小公倍数。
何时用: 洗牌/排序分析、圆排列计数、对称性枚举、置换密码。
输入/输出: 映射或轮换表示 → 轮换分解/奇偶性/阶。
陷阱: 置换乘法的左右作用顺序约定因教材而异，必须显式声明；奇偶性决定该置换能否由偶数次对换实现。
参考: https://en.wikipedia.org/wiki/Permutation · https://en.wikipedia.org/wiki/Symmetric_group
────────────────────────────────────────────────────────────
#2 四、数论基础（Elementary Number Theory）
#3 整除与素数
一句话: 整除、因子与素性是数论地基：每个大于 1 的整数唯一分解为素数之积（算术基本定理）。
何时用: 约数个数/求和、判素、分解小整数、构造互素关系。
输入/输出: 整数 → 素因子分解 / 素性结论。
陷阱: 试除 O(√n) 对大数不可行——大数判素用 Miller–Rabin 等测试而非硬分解；1 不是素数。
参考: https://en.wikipedia.org/wiki/Divisor · https://en.wikipedia.org/wiki/Primality_test
#3 欧几里得算法
一句话: gcd(a,b)=gcd(b, a mod b) 的快速 GCD；扩展版同时解出 ax+by=gcd(a,b)，是求模逆元的钥匙。
何时用: 约分、模逆元、线性同余方程、判断互素。
输入/输出: 两整数 → gcd（及扩展系数 x,y）。
陷阱: gcd 对 0/负数的约定各库不一（gcd(0,0)=0）；扩展欧几里得求 a 在 mod n 下的逆元前提是 gcd(a,n)=1。
参考: https://en.wikipedia.org/wiki/Euclidean_algorithm · https://en.wikipedia.org/wiki/Extended_Euclidean_algorithm
#3 素数筛
一句话: 埃氏筛 O(n log log n) 一次性标出 [1,n] 内全部素数，线性筛（欧拉筛）做到 O(n)。
何时用: 需要批量小素数（多查询、预处理因子分解）而非判定单个大数。
输入/输出: 上界 n → 素数表。
陷阱: 内存 O(n)，n 到 10⁹ 量级会爆内存；拿筛法判单个大数是用错工具（应换 Miller–Rabin）。
参考: https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes
#3 模幂运算
一句话: 快速平方（binary exponentiation）以 O(log e) 计算 aᵉ mod n，是密码学与素性检验的引擎。
何时用: 大指数取模、费马/Miller–Rabin 检验、Diffie–Hellman、循环规律题。
输入/输出: 底 a、指数 e、模 n → aᵉ mod n。
陷阱: 先乘后模会溢出，必须边乘边取模；能用内置三参 pow(a,e,n)（Python）就别手写。
参考: https://en.wikipedia.org/wiki/Modular_exponentiation
#3 中国剩余定理
一句话: 模数两两互素时，同余方程组在 mod N（N=∏nᵢ）下有唯一解。
何时用: 合并多模约束、拆大数为小模数并行计算、"x≡2 (mod 3), x≡3 (mod 5), x≡2 (mod 7)"类题。
输入/输出: 同余方程组 → mod N 的唯一解。
陷阱: 前提是模数两两互素，不互素时需先验相容性（可能无解或不唯一）；答案要落到 [0, N) 区间内。
参考: https://en.wikipedia.org/wiki/Chinese_remainder_theorem
#3 费马小定理与欧拉函数
一句话: p 素数则 aᵖ⁻¹≡1 (mod p)；欧拉函数 φ(n) 计与 n 互素的个数，欧拉定理 a^φ(n)≡1 推广到合数模。
何时用: 模素数逆元（a^(p−2) mod p）、大指数对 φ(n) 降幂、素性初筛、理解 RSA。
输入/输出: a 与模数 → 降幂后的指数 / 逆元。
陷阱: 费马检验的逆命题不真——Carmichael 数能骗过它，可靠判素用 Miller–Rabin；欧拉定理要求 gcd(a,n)=1。
参考: https://en.wikipedia.org/wiki/Fermat%27s_little_theorem · https://en.wikipedia.org/wiki/Euler%27s_totient_function
────────────────────────────────────────────────────────────
#2 五、离散数学（Discrete Mathematics）
#3 BFS 与 DFS 遍历（含图的表示）
一句话: 图用邻接表（省内存，遍历 O(V+E)）或邻接矩阵（查边 O(1)）存储；BFS 走层序、DFS 走深序，是一切图算法的骨架。
何时用: 无权最短路（BFS）、连通分量/拓扑排序/环检测（DFS）、可达性查询。
输入/输出: 图（表/矩阵） → 遍历序 / 父指针 / 分量编号。
陷阱: 稠密图用邻接表反而不便 O(1) 查边；递归 DFS 深度过大爆栈，改显式栈；BFS 入队时就要标记，出队才标记会重复扩展。
参考: https://en.wikipedia.org/wiki/Breadth-first_search · https://en.wikipedia.org/wiki/Adjacency_list
#3 Dijkstra 最短路
一句话: 非负权图单源最短路，贪心+优先队列实现 O((V+E)log V)。
何时用: 导航、网络延迟、代价均非负的状态转移图。
输入/输出: 带权图+源点 → 各点最短距离与前驱路径。
陷阱: 有负权边时 Dijkstra 结果直接错误（改 Bellman–Ford）；实现中应"入队时判重"而非"出队时判重"，否则复杂度爆炸。
参考: https://en.wikipedia.org/wiki/Dijkstra%27s_algorithm · https://en.wikipedia.org/wiki/Bellman%E2%80%93Ford_algorithm
#3 最小生成树
一句话: Kruskal（边排序+并查集）或 Prim（堆）选出 V−1 条边连通全图且总权最小。
何时用: 布线/管道/聚类等"最少代价连成一体"问题。
输入/输出: 连通带权图 → MST 边集与总权。
陷阱: 图不连通时得到的是最小森林（各分量一棵），先判连通性；边权并列时 MST 不唯一，答案须按"总权"核对。
参考: https://en.wikipedia.org/wiki/Kruskal%27s_algorithm · https://en.wikipedia.org/wiki/Prim%27s_algorithm
#3 最大流与最小割
一句话: 沿残量网络反复增广（Ford–Fulkerson/Dinic）求 s→t 最大流量，且最大流 = 最小割容量。
何时用: 带容量约束的输送问题、"最少删多少边可断开 s 与 t"、二元选择的建模壳。
输入/输出: 容量网络 → 最大流值 / 最小割集。
陷阱: 残量网络必须含反向边，漏建算法直接错误；浮点容量有不停机风险，用整数容量。
参考: https://en.wikipedia.org/wiki/Maximum_flow_problem · https://en.wikipedia.org/wiki/Max-flow_min-cut_theorem
#3 二分图匹配
一句话: 左集合与右集合的最大配对数，可用匈牙利算法或 Hopcroft–Karp，也可建成最大流模型。
何时用: 任务分配、婚配/师生配对、"互不相邻"选取类问题。
输入/输出: 二分图 → 最大匹配数与配对方案。
陷阱: 先二染色确认图真是二分图（含奇环则不是）； König 定理（最大匹配=最小点覆盖）只在二分图成立。
参考: https://en.wikipedia.org/wiki/Matching_(graph_theory) · https://en.wikipedia.org/wiki/Hopcroft%E2%80%93Karp_algorithm
#3 排列与组合
一句话: P(n,k)=n!/(n−k)! 有序选、C(n,k)=n!/(k!(n−k)!) 无序选，加法/乘法原理组合出一切计数。
何时用: "多少种方式"类计数、概率分母、枚举规模估算。
输入/输出: n、k 与选取规则 → 方案数。
陷阱: 21! 即溢出 int64，大数取模或用对数算；最常见错误是"有序/无序、可重复/不可重复"四象限选错公式。
参考: https://en.wikipedia.org/wiki/Combination · https://en.wikipedia.org/wiki/Binomial_coefficient
#3 容斥原理
一句话: |A∪B|=|A|+|B|−|A∩B|，多集合按 2ᵏ 个子集交替加减，修正直接相加的重复计数。
何时用: 数"至少满足一个"、数"全都不满足"（转补集）、被 2 或 3 整除的计数。
输入/输出: 各集合（及交集）计数 → 并集/补集计数。
陷阱: 每个交集必须能精确算出，否则容斥无法落地；子集枚举 2ᵏ 在 k&gt;20 左右爆炸，需换统计技巧。
参考: https://en.wikipedia.org/wiki/Inclusion%E2%80%93exclusion_principle
#3 生成函数
一句话: 把数列编码为幂级数 A(x)=Σaₙxⁿ，系数乘法即卷积，把计数递推变成代数操作。
何时用: 组合计数闭式、背包方案数、整数分拆、解线性递推。
输入/输出: 计数问题 → 生成函数 → 展开取系数即答案。
陷阱: 形式幂级数不关心收敛性，别用分析直觉先入为主；从闭式提取系数时的部分分式分解是最易错环节。
参考: https://en.wikipedia.org/wiki/Generating_function
#3 递推关系与主定理
一句话: 递推定义序列（斐波那契式），主定理直接读出 T(n)=aT(n/b)+f(n) 型分治的渐近复杂度。
何时用: 由递归结构推复杂度（二分、归并 O(n log n)）、数列通项、DP 转移合理性核对。
输入/输出: 递推式 → 闭式解或 Θ 渐近阶。
陷阱: 主定理三种情形的边界（f(n) 与 n^{log_b a} 的多项式关系）易判错；f(n) 落在情形缝隙（如 n/log n）时主定理不适用。
参考: https://en.wikipedia.org/wiki/Recurrence_relation · https://en.wikipedia.org/wiki/Master_theorem_(analysis_of_algorithms)
#3 证明方法：归纳、反证与构造
一句话: 归纳（基例+归纳步）、反证（否定结论导出矛盾）、构造（直接给出对象或算法）是三大普适证明武器。
何时用: 命题对全体自然数（归纳）、"不存在/必为无理"型（反证）、存在性问题（构造）。
输入/输出: 命题 → 证明骨架。
陷阱: 归纳步必须对任意 k 成立，不可偷用"未来"结论（强归纳与弱归纳选型要明确）；反证必须先写出结论的严格否定，否则所谓"矛盾"是假的。
参考: https://en.wikipedia.org/wiki/Mathematical_induction · https://en.wikipedia.org/wiki/Proof_by_contradiction
────────────────────────────────────────────────────────────
*收集员 A · 2026-09-25 · 条目 40 个 · 参考均为英文 Wikipedia 真实条目*
────────────────────────────────────────────────────────────
#1 第二部分：分析与微分方程（39 工具）
#1 域B：分析·微分方程·泛函·信号数学 工具索引（智能体数学大脑 · 初稿）
#2 域总览
本域覆盖"智能体数学大脑"的连续数学与分析主线：从微积分的极限、泰勒展开与数值求积，到级数收敛判别与傅里叶分析，再到复分析的留数技巧；随后是常微分方程的解析解法（分离变量、积分因子、特征方程）与数值解法（欧拉、RK4、刚性隐式法）及稳定性分析；偏微分方程三大类（热/波/拉普拉斯）的分离变量与有限差分离散；最后以动力系统与混沌（Logistic 映射、分岔、吸引子、Lyapunov 指数）、泛函分析要点（Banach/Hilbert 空间、谱定理）和信号处理数学（卷积、采样定理、窗函数、小波）收尾。选材标准是"智能体够用"：每条目给出触发信号、输入输出契约与最常见的数值/概念陷阱，参考链接全部指向 Wikipedia/DLMF/MIT OCW 等权威来源，可直接用作提示词素材与检索锚点。
────────────────────────────────────────────────────────────
#2 一、微积分
#3 极限与洛必达法则 (Limit &amp; L'Hôpital's Rule)
一句话: 用 ε-δ 定义判断极限，对 0/0、∞/∞ 型未定式可用导数比的极限代替原极限。
何时用: 出现"求 lim"、"未定式"、"∞−∞"、"0·∞"或需要比较无穷小阶数时。
输入/输出: 未定式 f(x)/g(x)（x→a）→ 极限值或"不存在"；幂指型需先取对数化成 0/0。
陷阱: 非未定式（如 x→0⁺ 的 (1+x)/x）禁用洛必达，会得出错误结论；导数比极限不存在≠原极限不存在。
参考: https://en.wikipedia.org/wiki/L%27H%C3%B4pital%27s_rule 、 https://en.wikipedia.org/wiki/Indeterminate_form
#3 导数与数值微分 (Derivative &amp; Numerical Differentiation)
一句话: 导数是局部变化率，数值上用差分近似（前向 O(h)、中心 O(h²)），或用自动微分精确求值。
何时用: 需要斜率/变化率、优化中求梯度、只有黑盒函数可用时。
输入/输出: 函数 f 与点 x（+步长 h）→ f′(x) 的近似值。
陷阱: 步长不是越小越好——舍入误差 ~ε/h 与截断误差 ~h² 相抵，最优 h 约为 ε^(1/3)；高精度需求改用复步微分或自动微分。
参考: https://en.wikipedia.org/wiki/Numerical_differentiation 、 https://en.wikipedia.org/wiki/Derivative
#3 泰勒展开 (Taylor Series)
一句话: 把光滑函数在展开点附近写成多项式+余项，是近似、求极限与分析局部行为的万能工具。
何时用: 近似计算、求未定式极限、判断极值阶数、数值方法误差分析（如欧拉法误差）时。
输入/输出: f(x)、展开点 a、截断阶 n → 多项式近似 + Peano/Lagrange 余项。
陷阱: 只在收敛半径内有效——对 |x|&gt;1 用几何级数求和、或远离展开点截断，误差爆炸；先查收敛域再近似。
参考: https://en.wikipedia.org/wiki/Taylor_series 、 https://dlmf.nist.gov/3.6
#3 换元积分与分部积分 (Integration by Substitution &amp; by Parts)
一句话: 换元 u=g(x) 化简被积函数，分部 ∫u dv = uv − ∫v du 转移导数，是符号积分两大主力。
何时用: 被积函数出现复合（链式逆操作）时试换元，出现两类函数乘积（如 x·eˣ、ln x）时试分部。
输入/输出: ∫f(x)dx → 等价的新积分/递推式 → 原函数（或确认无初等原函数）。
陷阱: 符号积分"积不出"≠没有原函数（如 e^(−x²)），应改数值积分或特殊函数表示；换元后勿忘回代或同步换积分限。
参考: https://en.wikipedia.org/wiki/Integration_by_substitution 、 https://en.wikipedia.org/wiki/Integration_by_parts
#3 数值求积：梯形/Simpson/Gauss (Numerical Quadrature)
一句话: 用节点函数值加权和近似定积分：梯形与 Simpson 在等距节点上分别有 2、4 阶精度，Gauss 求积用最优节点达 2n 阶精度。
何时用: 无初等原函数、只有离散采样点、或需要机器精度级积分值时。
输入/输出: 被积函数（或采样值）、区间、节点数 → 积分近似值+误差估计。
陷阱: 端点奇异的广义积分（如 ∫₀¹ dx/√x）梯形/Simpson 收敛极慢——先换元去奇异或用自适应/专门格式；Gauss 节点权重用现成库，勿手写硬编码。
参考: https://en.wikipedia.org/wiki/Numerical_integration 、 https://en.wikipedia.org/wiki/Gaussian_quadrature
#3 广义积分 (Improper Integral)
一句话: 对无穷区间或无界被积函数用极限定义积分，收敛与绝对收敛需要分别判定。
何时用: 积分上限是 ∞、被积函数在区间内有奇点、或概率密度归一化计算时。
输入/输出: ∫ₐ^∞ f 或含奇点的 ∫ → 收敛值 / 发散判定。
陷阱: 条件收敛（如 ∫ sin x /x dx）不能换序或重排；数值上直接在奇点采样会得到 NaN 或"假收敛"，需先解析去奇异再数值。
参考: https://en.wikipedia.org/wiki/Improper_integral
#2 二、实分析与级数
#3 级数收敛判别 (Convergence Tests)
一句话: 一套判别流程：正项级数用比值/根值/比较/积分判别法，交错级数用 Leibniz 判别，一般级数先查必要条件。
何时用: 判断 Σaₙ 收敛/发散、估计余项、决定能否逐项求和时。
输入/输出: 通项 aₙ → 收敛结论 + 绝对/条件收敛分类。
陷阱: 比值/根值判别得 l=1 时判别法失效（如 p-级数），需换方法，不能据此下"收敛性未知"以外的结论；条件收敛级数重排可改变其和。
参考: https://en.wikipedia.org/wiki/Convergence_tests 、 https://en.wikipedia.org/wiki/Ratio_test
#3 一致收敛 (Uniform Convergence)
一句话: 函数列/函数项级数的一致收敛保证极限的连续性传递与逐项积分、求导合法性，逐点收敛则不保证。
何时用: 交换"极限与积分/求导/求和"的顺序之前、判断函数项级数（幂级数、傅里叶级数）性质时。
输入/输出: 函数列 {fₙ} + 区间 → 一致收敛与否（sup 范数判据、Weierstrass M-判别）。
陷阱: 经典反例 fₙ(x)=xⁿ 在 [0,1] 逐点收敛到不连续函数——"每点都收敛"不等于"整体一致收敛"，逐项积分前必须先验证。
参考: https://en.wikipedia.org/wiki/Uniform_convergence
#3 傅里叶级数 (Fourier Series)
一句话: 把周期函数分解为正弦/余弦（或复指数）的无穷和，基频由区间长度决定。
何时用: 周期信号分析、求解带周期边界的热方程/波动方程、任意波形频谱分解时。
输入/输出: 周期函数 f(x) → 系数 {aₙ, bₙ} → 级数展开（间断点收敛到左右极限平均值）。
陷阱: 间断点附近部分和出现 Gibbs 振荡，超调约 9% 且不随 N 增大消失——这是逼近性质不是程序 bug。
参考: https://en.wikipedia.org/wiki/Fourier_series 、 https://en.wikipedia.org/wiki/Gibbs_phenomenon
#3 傅里叶变换 (Fourier Transform)
一句话: 把非周期信号在连续频率轴上展开，时域卷积对应频域乘积，是频谱分析的连续原型。
何时用: 求信号的频谱、解线性平移不变系统、把微分方程（求导→乘 iω）化为代数方程时。
输入/输出: 时域函数 f(t) → 频域 F(ω)；微分/卷积运算 → 乘法运算。
陷阱: 文献约定不统一（正负指数、1/2π 因子放哪边），跨教材/跨库对比结果可能整体差 2π 倍——先确认归一化约定。
参考: https://en.wikipedia.org/wiki/Fourier_transform
#3 离散傅里叶变换与快速算法 (DFT &amp; FFT)
一句话: DFT 把 N 个采样点映射为 N 个离散频率系数，FFT 是其 O(N log N) 快速实现。
何时用: 对离散采样做频谱分析、快速卷积（频域乘法）、解差分方程、图像处理时。
输入/输出: 长度 N 的实/复序列 → N 个复频谱系数（k=0 是直流，k=N/2 是 Nyquist 频率）。
陷阱: DFT 隐含周期延拓——非整数周期截断造成频谱泄漏；补零只是频域插值，不能提高真实频率分辨率（由窗长决定）。
参考: https://en.wikipedia.org/wiki/Discrete_Fourier_transform 、 https://en.wikipedia.org/wiki/Fast_Fourier_transform
#3 广义函数与狄拉克 δ 函数 (Distribution &amp; Dirac Delta Function)
一句话: δ 函数是"在 0 处单位冲量"的广义函数（分布），定义为对检验函数取值 f(0)，是冲激、点源、单位脉冲的数学化。
何时用: 建模瞬时冲击/点电荷/脉冲输入、求系统脉冲响应、用 Green 函数法解方程时。
输入/输出: ⟨δ, φ⟩ = φ(0)；δ 与函数卷积 → 该函数本身；δ 的傅里叶变换 → 常数 1。
陷阱: δ 不是普通函数，"δ(0)=∞"这类逐点运算无意义——所有运算都必须在积分/分布意义下理解（如 δ·f = f(0)δ，不是 δf(0)）。
参考: https://en.wikipedia.org/wiki/Dirac_delta_function 、 https://en.wikipedia.org/wiki/Distribution_(mathematics)
#2 三、复分析要点
#3 解析函数与柯西–黎曼方程 (Analytic Function &amp; Cauchy–Riemann Equations)
一句话: 复可微（解析）是极强条件：实虚部必须满足 Cauchy–Riemann 方程，解析函数自动无穷可微。
何时用: 判断复变函数能否用复分析工具（围线积分、留数）、检查函数是否调和、构造位势流时。
输入/输出: u(x,y), v(x,y) → 验证 uₓ=v_y 且 u_y=−vₓ → 解析性判定。
陷阱: "实虚部偏导存在且连续"（即 C¹）≠解析——必须逐点验证 CR 方程；解析函数的实虚部都是调和函数，可直接用来解二维 Laplace 问题。
参考: https://en.wikipedia.org/wiki/Analytic_function 、 https://en.wikipedia.org/wiki/Cauchy%E2%80%93Riemann_equations
#3 留数定理 (Residue Theorem)
一句话: 围线积分等于 2πi 乘以围线内奇点留数之和，是计算实积分（尤其三角函数/有理函数积分）的杀手锏。
何时用: 遇到 ∫₀^{2π} R(cosθ,sinθ)dθ、∫_{−∞}^{∞} R(x)dx、需要求逆变换/反演积分时。
输入/输出: 围线 + 奇点 → 各奇点留数（高阶极点需求导）→ 围线积分值。
陷阱: 必须数全围线内所有奇点并正确处理高阶极点（n 阶极点留数含 (n−1) 阶导数）；被积函数含多值函数（根式/对数）时还要考虑支割线贡献。
参考: https://en.wikipedia.org/wiki/Residue_theorem
#3 共形映射 (Conformal Map)
一句话: 导数非零的解析函数在局部保角且保定向，可把复杂区域变换成简单区域（如圆盘）来解边值问题。
何时用: 二维位势流/静电/热传导问题的不规则边界、需要把区域标准化、研究分形（如 Mandelbrot 的 Riemann 映射）时。
输入/输出: 区域 D + 解析函数 f → 像 f(D)，角度与局部形状保持，面积/长度一般改变。
陷阱: 保角性只在 f′(z)≠0 处成立，临界点是例外；实际找映射常用 Schwarz–Christoffel 公式，不要徒手猜。
参考: https://en.wikipedia.org/wiki/Conformal_map
#2 四、常微分方程
#3 一阶方程：分离变量与积分因子 (First-Order ODE: Separable &amp; Integrating Factor)
一句话: y′=f(x)g(y) 分离变量积分；线性方程 y′+p(x)y=q(x) 乘积分因子 μ=e^{∫p dx} 后化为全微分。
何时用: 指数增长/衰减、冷却、混合、RC 电路等一阶初值问题；判断方程是线性还是可分离时。
输入/输出: ODE + 初值 → 显式/隐式解 y(x)。
陷阱: 分离变量时除以 g(y) 会丢掉 g(y)=0 的常值解（如 y′=y²−1 丢 y≡±1）；线性方程必须先化标准形再读 p(x)。
参考: https://en.wikipedia.org/wiki/Separation_of_variables 、 https://en.wikipedia.org/wiki/Integrating_factor
#3 二阶常系数线性方程 (Second-Order Constant-Coefficient Linear ODE)
一句话: 由特征方程 r²+ar+b=0 定通解（相异实根/重根/共轭复根三情形），加上特解构成全解，是振动与电路的原型方程。
何时用: 弹簧-质量-阻尼、RLC 电路、受迫振动、任何"二阶线性+常系数"模型时。
输入/输出: y″+ay′+by=f(x) + 初值 → 通解形式 y_c + y_p + 由初值定常数。
陷阱: 重根情形解要乘 t（c₁+c₂t)e^{rt}；共振（ forcing 频率=固有频率）时特解须乘 t，否则待定系数法失败——表现为解出恒等式 0=0。
参考: https://en.wikipedia.org/wiki/Characteristic_equation_(calculus) 、 https://ocw.mit.edu/courses/18-03-differential-equations-spring-2010/
#3 欧拉法 (Euler Method)
一句话: 用当前斜率线性外推一步的最简数值解法（显式/隐式/改进三种变体），一阶精度。
何时用: 快速原型、演示数值方法原理、对精度要求不高的短时程积分时。
输入/输出: y′=f(t,y)、初值、步长 h → 逐步的 yₙ 序列。
陷阱: 显式欧拉对非刚性大步长也会数值不稳定（解振荡爆炸），验证精度必须做步长减半收敛测试，绝不能单步长结果下结论。
参考: https://en.wikipedia.org/wiki/Euler_method
#3 龙格–库塔法 (Runge–Kutta Methods / RK4)
一句话: 每步用多个斜率加权组合，经典 RK4 达四阶精度，是光滑问题数值积分的默认选择。
何时用: 需要比欧拉高得多的精度、函数光滑、非刚性的初值问题；工程仿真默认起步方案。
输入/输出: y′=f(t,y)、容差 → 高精度解序列（生产环境建议用自适应步长版本，如 Dormand–Prince）。
陷阱: 四阶精度的前提是 f 光滑——遇到不连续/强刚性 RK4 会"假收敛"或步长被迫极小，此时应换隐式/专用格式。
参考: https://en.wikipedia.org/wiki/Runge%E2%80%93Kutta_methods
#3 刚性方程与隐式法 (Stiff Equation &amp; Implicit Methods)
一句话: 系统含相差悬殊的时间尺度时称刚性，显式法被最快尺度限制步长，需改用隐式法（backward Euler、BDF、Radau）。
何时用: 化学动力学、电路瞬态、边界层问题——信号"解看起来很平稳但显式法必须用极小步长"是刚性标志。
输入/输出: y′=f(t,y)（含快速衰减模态）→ 隐式格式每步解非线性方程（Newton 迭代）→ 无条件稳定的大步长解。
陷阱: 隐式法稳定≠精确——大步长下快瞬态会被正确阻尼但慢分量可能失真，仍需误差控制；每步必须收敛的 Newton 迭代失败时要减步。
参考: https://en.wikipedia.org/wiki/Stiff_equation
#3 稳定性分析：平衡点/相图/Lyapunov 函数 (Stability Analysis: Equilibria, Phase Plane, Lyapunov Function)
一句话: 求平衡点→线性化算 Jacobian 特征值判局部稳定性（二维画相图），零实部等临界情形用 Lyapunov 函数（能量式 V，V̇&lt;0 即稳定）。
何时用: 问"系统最终停在哪/会不会振荡"、设计控制器、判断平衡是否稳定、分析非线性系统全局行为时。
输入/输出: 自治系统 y′=f(y) → 平衡点集合 + 各点稳定性分类（结点/鞍点/焦点/中心）+ 相图。
陷阱: 线性化只对双曲平衡点（特征值实部非零）有效——中心流形/临界情形线性化判不了，硬套会误判；Lyapunov 函数找不到不代表不稳定。
参考: https://en.wikipedia.org/wiki/Stability_theory 、 https://en.wikipedia.org/wiki/Lyapunov_function
#2 五、偏微分方程
#3 热方程 (Heat Equation)
一句话: u_t = α∇²u 描述扩散过程，有瞬时平滑效应：初值再粗糙，t&gt;0 立即光滑，能量单调耗散。
何时用: 扩散、热传导、期权定价（Black–Scholes 本质是热方程）、图像去噪（高斯模糊=热流）时。
输入/输出: 初值 u(x,0) + 边界条件 → 用卷积热核 e^{αtΔ} 或分离变量级数表示的 u(x,t)。
陷阱: 数值上显式格式稳定性要求 Δt ≤ Δx²/(2α)，Δx 减半则 Δt 要缩四倍——实务用隐式（backward Euler / Crank–Nicolson）保无条件稳定。
参考: https://en.wikipedia.org/wiki/Heat_equation
#3 波动方程 (Wave Equation)
一句话: u_tt = c²∇²u 描述有限速度传播的波动，能量守恒无耗散，与热方程行为完全相反。
何时用: 声波、弦振动、电磁波、地震波模拟；任何"信号以速度 c 传播"的场景。
输入/输出: 初位移+初速度 + 边界条件 → d'Alembert 公式（一维）或分离变量级数解。
陷阱: 数值显式格式必须满足 CFL 条件 Δt ≤ Δx/c 否则爆炸；解在间断（激波）处会有色散振荡，需要专门格式（如通量限制器）。
参考: https://en.wikipedia.org/wiki/Wave_equation 、 https://en.wikipedia.org/wiki/Courant%E2%80%93Friedrichs%E2%80%93Lewy_condition
#3 拉普拉斯方程 (Laplace's Equation)
一句话: ∇²u=0 是椭圆型方程原型，解（调和函数）由边界条件整体决定，满足最大值原理：极值只出现在边界。
何时用: 稳态热传导、静电势、理想流体位势、稳态浓度分布——所有"达到平衡后"的场问题。
输入/输出: 区域 + 边界条件（Dirichlet/Neumann）→ 唯一的调和函数解。
陷阱: 无初值概念、解是全局耦合的——边界某处数据误差会"传遍"全域，别期待局部修正；Neumann 问题需相容性条件（通量平衡）否则无解。
参考: https://en.wikipedia.org/wiki/Laplace%27s_equation
#3 分离变量法 (Separation of Variables)
一句话: 设 u(x,t)=X(x)T(t) 把 PDE 拆成常微分方程族，叠加满足边界条件的特征函数得到级数解。
何时用: 矩形/圆形等规则几何+线性 PDE+齐次边界条件的解析求解；得到特征函数基后可做模态分析。
输入/输出: 线性 PDE + 规则边界 → 特征值问题（Sturm–Liouville）→ 特征函数级数解。
陷阱: 只适用于规则几何与可分离边界；非齐次边界/源项要先做变换抬成齐次（找稳态解相减），直接分离会得到错解。
参考: https://en.wikipedia.org/wiki/Separation_of_variables
#3 有限差分法与 CFL 条件 (Finite Difference Method &amp; CFL Condition)
一句话: 用差商代替导数把 PDE 化为网格上的差分方程；显式格式的稳定域由 CFL 条件限定。
何时用: 不规则源项/边界、需要工程数值解、规则网格上的抛物/双曲/椭圆问题。
输入/输出: PDE + 网格 → 三对角/稀疏线性方程组（隐式）或显式推进格式 → 网格解 uᵢⁿ。
陷阱: 相容+稳定才收敛（Lax 等价定理）——只验证差分格式"看起来对"（相容）而不查稳定性是常见错误；格式精度阶数要与网格加密策略匹配。
参考: https://en.wikipedia.org/wiki/Finite_difference_method 、 https://en.wikipedia.org/wiki/Courant%E2%80%93Friedrichs%E2%80%93Lewy_condition
#2 六、动力系统与混沌
#3 Logistic 映射 (Logistic Map)
一句话: xₙ₊₁ = r·xₙ(1−xₙ) 是"一维也能混沌"的最简模型：r&lt;3 稳定不动点，3&lt;r&lt;3.57 倍周期级联，r&gt;3.57 混沌。
何时用: 演示混沌/分岔/对初值敏感、验证数值工具、种群模型教学时。
输入/输出: 参数 r + 初值 x₀ → 迭代轨道；r 扫描 → 分岔图。
陷阱: 混沌区双精度浮点的轨道 30–60 步后与真实轨道完全脱钩——单条轨道不可复现，但统计性质（不变分布、Lyapunov 指数）稳定可研究。
参考: https://en.wikipedia.org/wiki/Logistic_map
#3 分岔理论 (Bifurcation Theory)
一句话: 研究参数连续变化时平衡点/周期轨道的定性突变：鞍结、跨临界、叉式、Hopf 是四大基本型。
何时用: 问"参数多大时系统失稳/振荡/突变"、解释迟滞与状态跳变、参数扫描发现定性变化时。
输入/输出: 含参系统 ẋ=f(x,μ) → 分岔图（平衡点稳定性随 μ 变化）+ 分岔点类型。
陷阱: 数值扫描时要把暂态剔干净——未达稳态的瞬态轨迹常被误判为"分岔"或"混沌"；识别分岔类型要看稳定性符号变化，不能只看曲线交叉。
参考: https://en.wikipedia.org/wiki/Bifurcation_theory
#3 吸引子 (Attractor)
一句话: 轨迹长时间趋向的不变集合：不动点、极限环、环面、奇怪吸引子（分形结构+轨道永不重复）。
何时用: 判断系统长期行为（停稳/周期振荡/混沌）、分析相空间结构、解释"初值不同结局相同/不同"时。
输入/输出: 长时间积分的轨迹（剔除暂态）→ 吸引子的几何/统计刻画（维数、Poincaré 截面、功率谱）。
陷阱: 数值长轨迹的守恒量会缓慢漂移，可能"收敛"到假吸引子——混沌系统判吸引子要用不变量（能量/面积）漂移监控+多初值重复。
参考: https://en.wikipedia.org/wiki/Attractor
#3 Lyapunov 指数 (Lyapunov Exponent)
一句话: 量化相邻轨迹分离速率：最大 Lyapunov 指数 &gt;0 是混沌的操作性定义，其倒数是可预报时间尺度。
何时用: 判断时间序列是否混沌、估计可预报时长、区分混沌与随机噪声时。
输入/输出: 系统（方程或时间序列）→ 指数谱 {λ₁≥λ₂≥…}；λ₁&gt;0 → 混沌。
陷阱: 必须剔除暂态且轨迹足够长，否则严重低估；时间序列版本（wolf/嵌入维选择）对参数敏感——正指数也可能来自噪声趋势，需与替代数据检验对照。
参考: https://en.wikipedia.org/wiki/Lyapunov_exponent
#2 七、泛函分析要点
#3 赋范空间与 Banach 空间 (Normed Space &amp; Banach Space)
一句话: 赋范空间给"长度/距离"，完备的赋范空间叫 Banach 空间——Cauchy 列必收敛，是收敛性与存在性论证的舞台。
何时用: 论证迭代法/数值格式收敛（压缩映射原理）、区分不同函数空间（C[0,1] 的 sup 范数 vs L¹ 范数）、谈"收敛到函数"时。
输入/输出: 向量空间 + 范数 → 度量结构；完备性检验 → Banach 空间 → 不动点/逼近定理可用。
陷阱: 同一函数空间在不同范数下完备性与收敛含义完全不同（L¹ 收敛不等于一致收敛）——谈收敛必须先声明范数。
参考: https://en.wikipedia.org/wiki/Banach_space 、 https://en.wikipedia.org/wiki/Norm_(mathematics)
#3 内积空间与 Hilbert 空间 (Inner Product Space &amp; Hilbert Space)
一句话: 带内积（角度/正交）的完备空间，正交投影给出最佳平方逼近，是傅里叶分析、最小二乘、有限元（FEM）的统一框架。
何时用: 谈正交分解/最佳逼近、把傅里叶级数理解为正交基展开、推导 Galerkin/FEM 方法时。
输入/输出: 内积空间 → 正交基/投影；Riesz 表示定理 → 线性泛函=与某向量的内积。
陷阱: Hilbert 空间的"基"是无穷可数的（如傅里叶基），展开是无穷级数——截断误差与系数衰减速度挂钩，不能默认有限项就够。
参考: https://en.wikipedia.org/wiki/Hilbert_space 、 https://en.wikipedia.org/wiki/Inner_product_space
#3 线性算子与谱定理 (Linear Operator &amp; Spectral Theorem)
一句话: 谱定理保证自伴/正规算子有正交特征基、实特征值，可对角化——矩阵的"特征值分析"在无穷维的安全版本。
何时用: 主成分分析（PCA）、振动模态、稳定性判据（特征值实部）、微分算子特征函数展开、量子力学可观测量时。
输入/输出: 自伴算子/对称矩阵 → 实谱 + 正交特征基 → 函数演算 f(A) 与对角化表示。
陷阱: 谱定理只覆盖自伴/正规算子——非对称矩阵特征值可能高度病态（特征值对扰动极敏感），做敏感性结论前先查条件数。
参考: https://en.wikipedia.org/wiki/Spectral_theorem
#2 八、信号处理数学
#3 卷积 (Convolution)
一句话: (f∗g)(t)=∫f(τ)g(t−τ)dτ 是"滑动加权叠加"运算，等于 LTI 系统对输入的作用，时域卷积=频域乘积。
何时用: 求系统输出（输入⊗脉冲响应）、图像滤波/模糊、概率密度之和、用 FFT 加速长序列滤波时。
输入/输出: 两个序列/函数 → 卷积结果（长度线性卷积为 N+M−1；循环卷积为 N）。
陷阱: 用 FFT 实现线性卷积时要补零到 N+M−1 否则发生循环折叠污染结果；边界处理（zero/periodic/reflect）不同结果差异大，须声明。
参考: https://en.wikipedia.org/wiki/Convolution
#3 相关：自相关与互相关 (Autocorrelation &amp; Cross-correlation)
一句话: 度量信号与自身/另一信号的相似度随延迟的变化，自相关的傅里叶变换是功率谱（Wiener–Khinchin）。
何时用: 找周期性/回声延迟、雷达/通信匹配滤波、时间序列周期检测、计算功率谱密度时。
输入/输出: 一个/两个信号 → 随 lag 变化的相关序列（有归一化与未归一化两种约定）。
陷阱: 互相关≠卷积（相差一次翻转）；比较相似性必须用归一化相关（否则被幅度大小支配）；自相关峰≠周期严格成立，要看峰的显著性与衰减。
参考: https://en.wikipedia.org/wiki/Autocorrelation 、 https://en.wikipedia.org/wiki/Cross-correlation
#3 采样定理 (Nyquist–Shannon Sampling Theorem)
一句话: 带限信号以 fs &gt; 2·f_max 采样即可无失真重建，否则产生混叠。
何时用: 设计采样率、判断"这个采样率够不够"、做数模转换/重采样、解释频谱怪象时。
输入/输出: 连续信号（带宽 B）→ 采样率 fs&gt;2B 的离散序列 → 理想低通可完全重建。
陷阱: "带限"是前提——真实信号先抗混叠低通滤波再采样；2 倍是理论下限，工程上取 2.5–4 倍留过渡带余量。
参考: https://en.wikipedia.org/wiki/Nyquist%E2%80%93Shannon_sampling_theorem 、 https://ocw.mit.edu/courses/6-003-signals-and-systems-fall-2011/
#3 混叠 (Aliasing)
一句话: 采样不足时高频分量折叠伪装成低频（f_alias=|f−k·fs|），且一旦发生无法事后修复。
何时用: 频谱出现"不可能的低频"、车轮倒转/摩尔纹、解释 FFT 结果里的伪峰时。
输入/输出: fs 与信号频率 → 折叠频率 ±fs/2 内的镜像频率表。
陷阱: 混叠在时域完全不可见、只在频域暴露——"看起来采样够密"不是判据，必须按最高频率成分（含噪声）算折叠；已混叠数据只能重采不能补救。
参考: https://en.wikipedia.org/wiki/Aliasing
#3 窗函数 (Window Function)
一句话: 对截断信号乘缓变窗（Hann/Hamming/Blackman/Kaiser）以压低频谱泄漏，代价是主瓣展宽。
何时用: 对非整周期截断的信号做 FFT、频谱分析、FIR 滤波器设计、两频率成分幅度差悬殊的分辨时。
输入/输出: 时域截断序列 × 窗 → 泄漏降低的频谱；参数 = 主瓣宽度（分辨率）↔ 旁瓣衰减（泄漏）折衷。
陷阱: 加窗后能量/幅值要按窗的相干增益校正，否则幅值系统性偏低；没有全能窗——分辨率与泄漏是零和折衷，按分析目标选型。
参考: https://en.wikipedia.org/wiki/Window_function
#3 小波变换 (Wavelet Transform)
一句话: 用可平移伸缩的母小波做分解，给出多分辨率时频表示——低频看全貌、高频看细节，弥补 STFT 固定分辨率的不足。
何时用: 非平稳信号（突变/瞬态/调频）、图像压缩（JPEG2000）、去噪、需要"何时发生什么频率"的分析时。
输入/输出: 信号 + 母小波 → 连续小波变换（冗余的时频系数面）或离散正交小波（DWT，无冗余可完美重构）。
陷阱: 连续小波变换高度冗余（用于分析），直接拿它压缩/重建会浪费甚至出错——重建与压缩要用正交/双正交 DWT；母小波选择决定时频折衷，须声明。
参考: https://en.wikipedia.org/wiki/Wavelet_transform
────────────────────────────────────────────────────────────
*收集员B · 覆盖域：微积分 / 实分析与级数 / 复分析 / 常微分方程 / 偏微分方程 / 动力系统与混沌 / 泛函分析 / 信号处理数学。参考链接全部指向 Wikipedia、DLMF、MIT OCW 的长期稳定页面。*
────────────────────────────────────────────────────────────
#1 第三部分：概率统计与随机过程（40 工具）
#1 域C 工具索引：概率·统计推断·随机过程·时间序列·信息论（初稿）
「收集员：math-tools-index / 收集员C ｜ 日期：2026-09-25（Asia/Shanghai）｜ 条目数：40」
#2 域总览
概率与随机域是智能体"数学大脑"中处理不确定性的地基，七条主线层层递进：概率基础与分布族把随机现象参数化；统计推断（MLE/检验/Bootstrap）从样本反推总体并控制错误率；回归与多元统计负责结构建模与降维；贝叶斯+MCMC 量化参数不确定性；随机过程（泊松过程/马尔可夫链/布朗运动/Itô 引理/SDE）刻画连续时间演化，是期权定价与风险模拟的语言；时间序列（ARIMA/GARCH/卡尔曼滤波/Granger 因果）面向预测与波动建模；信息论（熵/KL/互信息）为模型比较、特征选择与编码极限提供统一度量。每条目按固定 schema 给出触发信号、输入输出与陷阱，金融/数据科学场景优先，供智能体按问题特征直接调用。
────────────────────────────────────────────────────────────
#2 A. 概率基础
#3 条件概率与全概率公式 (Conditional Probability &amp; Law of Total Probability)
一句话: 在已知部分信息下重新定义事件概率，并按"分情况+加权"把复杂事件概率拆解为可计算的碎片。
何时用: 信号——"在已知X发生的前提下Y的概率"、"分场景/分渠道汇总概率"；金融例：已知财报超预期条件下股价上涨概率，按行业分层后用全概率合并。
输入/输出: 事件A、B 及 P(A|B)，或分划{B_i}与 P(A|B_i),P(B_i) → P(A|B) 或 P(A)
陷阱: 混淆 P(A|B) 与 P(B|A)（检察官谬误），两者相差一个先验比。
参考: https://en.wikipedia.org/wiki/Conditional_probability ；https://en.wikipedia.org/wiki/Law_of_total_probability
#3 贝叶斯定理 (Bayes' Theorem)
一句话: 用"先验×似然"把观察证据转化为后验概率，是数据更新信念的标准机制。
何时用: 信号——"看到新数据后我的判断该改成多少"；金融例：违约概率随新财报更新、策略信号真伪判别、基率谬误校正。
输入/输出: 先验 P(H)、似然 P(E|H)、证据 P(E) → 后验 P(H|E)
陷阱: 忽视基率（base rate）会系统性高估稀有事件后验；多个小概率连乘时进对数空间防下溢。
参考: https://en.wikipedia.org/wiki/Bayes%27_theorem
#3 二项分布 (Binomial Distribution)（含伯努利分布 Bernoulli Distribution）
一句话: n 次独立成败试验中成功次数的分布；单次试验即伯努利。
何时用: 信号——"N 个客户、单转化率 p，至少 k 个转化的概率"；金融例：n 只债券独立违约只数、月内盈利天数计数。
输入/输出: n, p → P(X=k)；E=np，Var=np(1-p)
陷阱: 要求试验独立且 p 恒定；n 大 p 小时用泊松近似，别硬算组合数（数值溢出，应算对数概率）。
参考: https://en.wikipedia.org/wiki/Binomial_distribution ；https://en.wikipedia.org/wiki/Bernoulli_distribution
#3 泊松分布 (Poisson Distribution)
一句话: 单位时间/面积内随机事件发生次数的分布，唯一参数是平均发生率 λ。
何时用: 信号——"每小时订单数/涨停家数/违约笔数"这类计数数据；金融例：限价单到达计数、极端行情日计数。
输入/输出: λ → P(X=k)=e^{-λ}λ^k/k!；E=Var=λ
陷阱: 样本均值远大于方差（过离散）时应改负二项分布，硬套泊松会低估尾部。
参考: https://en.wikipedia.org/wiki/Poisson_distribution
#3 几何分布与超几何分布 (Geometric &amp; Hypergeometric Distribution)
一句话: 几何分布是"首次成功前的等待次数"；超几何分布是不放回抽样中命中个数。
何时用: 信号——"连续亏损几期才等来首盈"（几何）；"从池子无放回抽取、命中数概率"（超几何）；金融例：不放回抽样审计、个券抽样检验。
输入/输出: 几何: p → P(X=k)=(1-p)^{k-1}p；超几何: 总体N、命中K、抽取n → P(X=k)
陷阱: 超几何是不放回抽样，与二项不等价，仅当抽样比例很小时才可近似。
参考: https://en.wikipedia.org/wiki/Geometric_distribution ；https://en.wikipedia.org/wiki/Hypergeometric_distribution
#3 正态分布 (Normal / Gaussian Distribution)
一句话: 由均值 μ 和方差 σ² 完全刻画的钟形连续分布，是中心极限定理的极限形态。
何时用: 信号——"近似对称的连续量、误差项建模、参数置信区间"；金融例：对数收益率近似建模、参数法 VaR。
输入/输出: μ, σ² → 密度/分位数（如 z_{0.975}=1.96）
陷阱: 金融收益率有肥尾与偏度，用正态会低估极端损失；算密度时用 log-pdf 防下溢。
参考: https://en.wikipedia.org/wiki/Normal_distribution
#3 指数分布与 Gamma 族 (Exponential &amp; Gamma Distribution)
一句话: 指数分布建模"等待时间"，Gamma 是 k 段独立等待时间之和的分布，卡方是其形状参数取半整数的特例。
何时用: 信号——"寿命/间隔时间/生存时长"；金融例：违约等待时间（约化模型）、保险赔付总额近似。
输入/输出: 指数: λ → P(T&gt;t)=e^{-λt}；Gamma: 形状k+尺度θ → 密度与分位数
陷阱: 参数化分歧大（rate vs scale），scipy 用 scale=1/rate，套公式前先核对约定。
参考: https://en.wikipedia.org/wiki/Exponential_distribution ；https://en.wikipedia.org/wiki/Gamma_distribution
#3 三大抽样分布：t、卡方、F (Student's t, Chi-squared &amp; F Distributions)
一句话: 由正态样本构造的三个基准分布，分别服务于均值推断、方差/拟合优度推断与方差比比较。
何时用: 信号——"小样本均值是否偏离"（t）；"方差是否等于某值/拟合优度检验"（χ²）；"两组方差谁更大"（F，ANOVA 基础）。
输入/输出: 检验统计量 + 自由度 → p 值/临界值
陷阱: 自由度用错（配对 vs 独立双样本）是最常见错误；卡方拟合优度要求期望频数≥5。
参考: https://en.wikipedia.org/wiki/Student%27s_t-distribution ；https://en.wikipedia.org/wiki/Chi-squared_distribution
#3 大数定律与中心极限定理 (Law of Large Numbers &amp; Central Limit Theorem)
一句话: LLN 保证样本均值随样本量收敛到真值，CLT 给出其波动近似正态、误差 ~σ/√n——一切"模拟+误差棒"的理论依据。
何时用: 信号——"蒙特卡洛估值要做多少次模拟"、"样本均值±多少才可信"；金融例：MC 期权定价误差估计、回测指标稳定性判断。
输入/输出: i.i.d. 假设 + 样本量 n → 依概率收敛（LLN）；近似置信半径 1.96·σ/√n（CLT）
陷阱: 肥尾分布（方差不存在，如尾指数≤2 的 t 分布）下 CLT 收敛极慢甚至失效，√n 律不可用。
参考: https://en.wikipedia.org/wiki/Law_of_large_numbers ；https://en.wikipedia.org/wiki/Central_limit_theorem
#3 矩与矩生成函数 (Moments &amp; Moment-Generating Function)
一句话: 用 E[X^k]（原点矩/中心矩）概括分布的位置、散度、偏度、峰度；MGF 是矩的"生成器"，可唯一确定分布并简化独立和。
何时用: 信号——"用几个数概括收益分布风险特征"（均值/方差/偏度/峰度）；"独立随机变量之和的分布"（MGF 相乘）；金融例：高阶矩风险、尾部近似。
输入/输出: 分布 → 各阶矩；MGF M(t)=E[e^{tX}] → k 阶导数在 t=0 取值
陷阱: 重尾分布（t、对数正态）的 MGF 在任意 t&gt;0 可能不存在，改用特征函数或直接数值方法。
参考: https://en.wikipedia.org/wiki/Moment-generating_function
#2 B. 统计推断
#3 最大似然估计 (Maximum Likelihood Estimation, MLE)
一句话: 选出让"观测数据出现概率最大"的参数，是频率派参数估计的默认引擎，大样本下渐近有效。
何时用: 信号——"给分布/模型拟合参数"；金融例：GARCH 参数估计、收益率分布拟合、信用模型校准。
输入/输出: 数据 + 模型族 → 参数估计值与渐近标准误
陷阱: 对数似然求和用 log-sum-exp 防下溢；MLE 只在正则条件下渐近正态，小样本可能严重有偏。
参考: https://en.wikipedia.org/wiki/Maximum_likelihood_estimation ；https://ocw.mit.edu/courses/18-05-introduction-to-probability-and-statistics-spring-2022/
#3 矩估计与无偏性 (Method of Moments &amp; Unbiasedness)
一句话: 令样本矩等于总体矩解出参数的闭式快速估计；无偏性指估计量期望等于真值。
何时用: 信号——"要一个一秒算出的初值/对比基准"；金融例：先用样本均值方差校准正态参数，再以 MLE 精化。
输入/输出: 样本矩 → 参数估计（无需求优化）
陷阱: 无偏≠好——常忽略方差/MSE 权衡，有偏的收缩估计量（Ridge、James-Stein）往往预测更优。
参考: https://en.wikipedia.org/wiki/Method_of_moments_(statistics) ；https://en.wikipedia.org/wiki/Bias_of_an_estimator
#3 置信区间 (Confidence Interval)
一句话: 用区间量化估计的不确定性；95% CI 指重复抽样时构造方法有 95% 的区间盖住真值。
何时用: 信号——"这个收益率/转化率是多少、误差多大"；金融例：年化收益的置信区间、样本外夏普比区间。
输入/输出: 估计值 + 标准误（或 bootstrap 分位数）→ [下界, 上界]
陷阱: "真值落入这个具体区间的概率是95%"是错误解读（真值固定，区间随机）；自相关数据套 i.i.d. 公式会低估宽度。
参考: https://en.wikipedia.org/wiki/Confidence_interval ；https://www.itl.nist.gov/div898/handbook/
#3 假设检验与 p 值 (Hypothesis Testing &amp; p-value)
一句话: 在"原假设为真"的前提下计算出现当前或更极端数据的概率，据预设显著性水平 α 决定拒绝与否。
何时用: 信号——"策略是否跑赢基准"、"A/B 测试提升是否显著"；金融例：均值是否为 0 的 t 检验、两方差比较的 F 检验。
输入/输出: 原假设/备择假设 + α → 检验统计量、p 值、决策
陷阱: p 值不是"原假设为真的概率"，不显著≠无差异；多重比较必须校正（Bonferroni/FDR），否则批量翻策略必出假阳性。
参考: https://en.wikipedia.org/wiki/Statistical_hypothesis_testing ；https://en.wikipedia.org/wiki/Misuse_of_p-values
#3 方差分析 (Analysis of Variance, ANOVA)
一句话: 用 F 统计量比较三组及以上均值是否相同，把总方差分解为组间与组内两部分。
何时用: 信号——"多个策略/渠道/参数档位的平均表现有没有差别"；金融例：不同因子分组收益均值是否显著不同。
输入/输出: 分组样本 → F 值、p 值（显著后再做事后两两比较）
陷阱: 前提是各组近似正态、方差齐性（可用 Levene 检验查）；不满足时改 Kruskal-Wallis 非参数检验。
参考: https://en.wikipedia.org/wiki/Analysis_of_variance
#3 Bootstrap 自助法 (Bootstrapping)
一句话: 对样本有放回重抽样来近似统计量的抽样分布，从而得到标准误与置信区间，无需分布假设。
何时用: 信号——"统计量没有闭式标准误"、"小样本+复杂统计量"；金融例：对夏普比、最大回撤做 bootstrap 区间。
输入/输出: 样本 + 统计量函数 → 标准误/置信区间（percentile 或 BCa）
陷阱: 时间序列有自相关时必须用块状（block）bootstrap，普通 i.i.d. 重采样会破坏依赖结构、低估不确定性。
参考: https://en.wikipedia.org/wiki/Bootstrapping_(statistics)
#2 C. 回归与多元统计
#3 线性回归与 OLS 诊断 (Linear Regression / OLS)
一句话: 最小化残差平方和拟合线性关系，附一整套假设与诊断体系（Gauss-Markov、残差诊断）。
何时用: 信号——"量化 y 与若干 X 的线性关系与各因子边际效应"；金融例：多因子风险暴露回归、个股 beta 估计。
输入/输出: (X, y) → 系数 β̂、标准误、R²、残差诊断图
陷阱: 线性/独立/同方差/正态四大假设破坏时系数仍可能无偏但标准误失真——异方差用稳健标准误，自相关用 Newey-West HAC。
参考: https://en.wikipedia.org/wiki/Linear_regression ；https://www.statsmodels.org/stable/index.html
#3 逻辑回归 (Logistic Regression)
一句话: 用 sigmoid 把线性组合映射为概率，以极大似然做二分类建模。
何时用: 信号——"预测事件发生概率"（违约/涨跌/点击）；金融例：信用评分卡、公司退市概率模型。
输入/输出: (X, 0/1 标签) → 概率 p(x) 与系数（可解释为对数几率变化）
陷阱: 类别严重不平衡时准确率失真，应看 AUC/PR 与校准曲线；数据完全可分时 MLE 系数发散，需正则化。
参考: https://en.wikipedia.org/wiki/Logistic_regression
#3 正则化的统计视角：Ridge 与 Lasso (Ridge &amp; Lasso Regularization)
一句话: 在损失中惩罚系数大小：L2（Ridge）压缩系数抗共线性，L1（Lasso）产生稀疏解兼做变量选择。
何时用: 信号——"因子多、样本少、彼此相关"；金融例：多因子选股模型去共线性（Ridge）、精选有效因子（Lasso）。
输入/输出: (X, y, λ) → 压缩后的系数向量
陷阱: λ 必须交叉验证选取；变量须先标准化，否则惩罚对不同量纲的变量不公平。
参考: https://en.wikipedia.org/wiki/Ridge_regression ；https://en.wikipedia.org/wiki/Lasso_(statistics)
#3 主成分分析 (Principal Component Analysis, PCA)
一句话: 对协方差（或相关）矩阵做特征分解，把相关变量压缩为少数互不相关的主成分。
何时用: 信号——"高维相关数据降维、共线因子压缩、构造正交风险因子"；金融例：收益率曲线的三大主成分（水平/斜率/曲率）。
输入/输出: 数据矩阵 → 主成分得分、方差解释比、载荷
陷阱: 量纲不齐时必须用相关阵（先标准化），否则高方差变量垄断主成分；成分本身无业务含义，解释要克制。
参考: https://en.wikipedia.org/wiki/Principal_component_analysis
#3 聚类的统计原理：K-means 与高斯混合 (K-means &amp; Gaussian Mixture Model, GMM)
一句话: K-means 按到质心距离平方和最小化划分样本；GMM 假设数据来自多个高斯混合，用 EM 算法估计软分配概率。
何时用: 信号——"市场状态/客户分群"；金融例：波动率 regime 聚类（低/中/高）、客户分层营销。
输入/输出: 特征矩阵 + k → 簇标签（K-means）或后验归属概率（GMM）
陷阱: K-means 对初值与量纲敏感、只适合凸球形簇，须多随机种子重启；k 用肘部法/轮廓系数/GMM 的 BIC 选，不要拍脑袋。
参考: https://en.wikipedia.org/wiki/K-means_clustering ；https://en.wikipedia.org/wiki/Mixture_model
#2 D. 贝叶斯统计
#3 先验、后验与共轭先验 (Prior, Posterior &amp; Conjugate Priors)
一句话: 先验编码数据前的信念，乘似然归一化得后验；共轭先验使后验与先验同族（Beta-Binomial、Gamma-Poisson 等），闭式可算。
何时用: 信号——"小样本但有领域先验"、"参数要随数据流式更新"；金融例：违约率先验+新违约数据更新、贝叶斯 A/B 测试监控。
输入/输出: 先验分布 × 似然 → 后验分布（完整的参数不确定性）
陷阱: 先验不是随便拍的，不当先验会主导小样本后验；结论报告前做先验敏感性分析。
参考: https://en.wikipedia.org/wiki/Conjugate_prior ；https://en.wikipedia.org/wiki/Prior_probability
#3 马尔可夫链蒙特卡洛：Metropolis-Hastings 与 Gibbs (MCMC: Metropolis-Hastings &amp; Gibbs Sampling)
一句话: 构造以目标后验为平稳分布的马尔可夫链，靠长时间采样近似无法闭式表达的后验分布。
何时用: 信号——"后验没有闭式解、多维参数贝叶斯推断"；金融例：随机波动率模型估计、贝叶斯资产定价。
输入/输出: 非归一化对数后验 → 参数后验样本（均值/区间/HPD）
陷阱: 必须诊断收敛（R̂、有效样本量 ESS、trace 图）并丢弃 burn-in；两条链长得像≠收敛，多峰后验易卡局部。
参考: https://en.wikipedia.org/wiki/Metropolis%E2%80%93Hastings_algorithm ；https://en.wikipedia.org/wiki/Gibbs_sampling
#3 贝叶斯模型比较 (Bayesian Model Comparison / Bayes Factor)
一句话: 用边缘似然之比（贝叶斯因子）或 WAIC/LOO 比较模型的证据强度，自动惩罚模型复杂度。
何时用: 信号——"两个模型哪个更可信"且需计入参数不确定性；金融例：比较不同波动率模型的预测力。
输入/输出: 各模型的数据+先验 → 贝叶斯因子/边缘似然或信息准则
陷阱: 边缘似然对先验敏感且难计算；结论随先验反转时必须如实报告，不能只报单边结果。
参考: https://en.wikipedia.org/wiki/Bayes_factor
#2 E. 随机过程
#3 泊松过程与更新过程 (Poisson Process &amp; Renewal Theory)
一句话: 泊松过程是独立增量、发生率 λ 的计数过程，事件间隔为 i.i.d. 指数；更新过程把间隔推广到任意分布。
何时用: 信号——"事件随机到达、只关心计数与间隔"；金融例：限价单到达、跳空/违约事件计数（约化信用模型）。
输入/输出: λ（或间隔分布）→ N(t) 的分布、到达时刻、长期速率 1/E[间隔]
陷阱: λ 随时间变化（非齐次）时分布公式不同；"间隔无记忆"只对指数间隔成立，不能套到一般更新过程。
参考: https://en.wikipedia.org/wiki/Poisson_point_process ；https://en.wikipedia.org/wiki/Renewal_theory
#3 马尔可夫链 (Markov Chain)（转移矩阵/平稳分布/细致平衡）
一句话: 未来只依赖当前的随机过程；由转移矩阵驱动，不可约+非周期时收敛到平稳分布，细致平衡保证其存在。
何时用: 信号——"状态演化只看当前态"；金融例：信用评级迁移矩阵、市场 regime 切换模型；也是 MCMC 的理论基础。
输入/输出: 转移矩阵 P → k 步概率 P^k、平稳分布 π（解 πP=π）
陷阱: 长期极限要求不可约+非周期；存在吸收态时链会卡死，平稳分布计算注意数值归一化。
参考: https://en.wikipedia.org/wiki/Markov_chain ；https://en.wikipedia.org/wiki/Detailed_balance
#3 鞅 (Martingale)
一句话: 条件期望等于当前值的"公平游戏"过程，是无套利定价与风险中性测度的核心概念。
何时用: 信号——"价格在风险中性世界应是多少"、"策略是否有漂移优势"；金融例：贴现资产价格在风险中性测度下是鞅。
输入/输出: 过程 + 信息流 → 验证 E[X_{t+1}|F_t]=X_t；停时定理/鞅不等式
陷阱: 鞅≠平稳——鞅可以波动剧烈；只有鞅差序列才能直接套 CLT 类结论。
参考: https://en.wikipedia.org/wiki/Martingale_(probability_theory)
#3 布朗运动/维纳过程 (Brownian Motion / Wiener Process)
一句话: 连续时间、独立正态增量的随机游走极限，是连续时间金融模型的原材料。
何时用: 信号——"连续时间价格演化的驱动源"；金融例：几何布朗运动下的 BSM 定价、路径依赖期权模拟。
输入/输出: 漂移与扩散参数 → 路径 W_t；增量服从 N(0, σ²Δt)
陷阱: 布朗运动处处连续但处处不可微、全变差无穷——不能按普通函数求导/积分，必须走 Itô 随机积分。
参考: https://en.wikipedia.org/wiki/Wiener_process
#3 随机积分与 Itô 引理 (Itô Calculus &amp; Itô's Lemma)
一句话: 对布朗运动的光滑函数做"链式法则+二阶修正项"的微分，给出 dF(X_t) 的演化规则。
何时用: 信号——"给随机过程做微积分"、推导衍生品价格 PDE；金融例：BSM 方程推导、利率模型（Hull-White/CIR）推导。
输入/输出: 过程 dX + 光滑函数 f → Itô 公式 df(X_t)（多出 ½σ²f″(dW)²=½σ²f″dt 修正项）
陷阱: 忘记二阶修正项是最经典的推导错误——(dW)²=dt 而非 0。
参考: https://en.wikipedia.org/wiki/It%C3%B4%27s_lemma ；https://en.wikipedia.org/wiki/It%C3%B4_calculus
#3 随机微分方程与 Euler-Maruyama 数值解 (SDE &amp; Euler-Maruyama Method)
一句话: 用 dX_t = a(X_t,t)dt + b(X_t,t)dW_t 描述连续随机动态；Euler-Maruyama 是最简单的离散数值格式。
何时用: 信号——"给定价/利率/波动率过程做蒙特卡洛模拟"；金融例：模拟 GBM 路径为期权定价、CIR 利率路径模拟。
输入/输出: 漂移/扩散函数 + 初始值 + 步长 → 离散路径样本
陷阱: 步长过粗误差大且可能越出定义域（如利率变负）；对带边界约束的过程改用隐式格式、Milstein 或精确变换（如模拟 log X）。
参考: https://en.wikipedia.org/wiki/Euler%E2%80%93Maruyama_method ；https://en.wikipedia.org/wiki/Stochastic_differential_equation
#2 F. 时间序列
#3 AR/MA/ARMA/ARIMA (Autoregressive / Moving Average / ARIMA Models)
一句话: 用自身滞后（AR）与滞后噪声（MA）的线性组合建模平稳序列；ARIMA 先差分 d 次再建模，处理趋势非平稳。
何时用: 信号——"单变量序列短期预测"；金融例：平稳化价差/波动率的基准预测、现金流与库存预测。
输入/输出: 历史序列 → 阶数 (p,d,q)（AIC/BIC 定阶）+ 预测值与预测区间
陷阱: 差分过度（d 过大）反而引入负单位根问题；残差必须过 Ljung-Box 白噪声检验，否则信息没提干净。
参考: https://en.wikipedia.org/wiki/Autoregressive_moving-average_model ；https://en.wikipedia.org/wiki/Autoregressive_integrated_moving_average
#3 平稳性与自相关诊断：ADF 检验、ACF/PACF (Stationarity: ADF Test, ACF &amp; PACF)
一句话: ADF 检验查单位根（非平稳性），ACF/PACF 图定 AR/MA 阶数并暴露季节性与持续性。
何时用: 信号——"这序列能直接建模吗"、"用价格还是收益率做输入"；金融例：配对交易前检验价差平稳性（协整前提）。
输入/输出: 序列 → ADF 统计量与 p 值；各滞后阶 ACF/PACF 值与置信带
陷阱: ADF 在小样本下功效低，"没检出非平稳"≠平稳；对非平稳价格直接回归是伪回归（spurious regression）。
参考: https://en.wikipedia.org/wiki/Augmented_Dickey%E2%80%93Fuller_test ；https://en.wikipedia.org/wiki/Partial_autocorrelation_function
#3 GARCH 族 (GARCH / Generalized ARCH)
一句话: 把条件方差建模为其自身滞后与平方残差滞后的函数，捕捉波动率聚集（大波动跟大波动）。
何时用: 信号——"收益率方差不恒定、波动有记忆"；金融例：波动率预测进 VaR、期权定价输入、风险平价调仓频率。
输入/输出: 收益率序列 → 条件方差预测 σ̂²_{t+1} 与参数 (ω, α, β)
陷阱: 先定均值方程（常数或 ARMA）再拟合 GARCH；高阶易过拟合，GARCH(1,1) 是默认起点。
参考: https://en.wikipedia.org/wiki/Autoregressive_conditional_heteroskedasticity ；https://www.statsmodels.org/stable/tsa.html
#3 状态空间模型与卡尔曼滤波 (State-Space Model &amp; Kalman Filter)
一句话: 把系统写成"隐状态演化 + 带噪观测"两组方程，卡尔曼滤波在线性高斯假设下递推最优状态估计。
何时用: 信号——"隐变量要边来数据边估计"（动态 beta、潜趋势）；金融例：动态对冲比率在线估计、宏观数据 Nowcasting。
输入/输出: 状态方程 + 观测方程 → 状态滤波均值/协方差与对数似然
陷阱: 线性高斯是前提，非线性换 EKF/UKF/粒子滤波；过程/观测噪声 Q、R 设定不当滤波会发散。
参考: https://en.wikipedia.org/wiki/Kalman_filter ；https://en.wikipedia.org/wiki/State-space_representation
#3 Granger 因果 (Granger Causality)
一句话: 若加入 X 的滞后能显著改善对 Y 的预测，称 X "Granger 引致" Y——是预测因果，不是结构因果。
何时用: 信号——"谁领先谁"、领先滞后结构挖掘；金融例：行业间收益传导、量价领先关系检验。
输入/输出: 两条平稳序列 + 滞后阶 → 各方向的 F 检验 p 值
陷阱: 只对平稳序列有意义；Granger 因果≠真因果（遗漏变量与同期相关可造假象），不能直接当结构性/政策依据。
参考: https://en.wikipedia.org/wiki/Granger_causality ；https://www.statsmodels.org/stable/tsa.html
#2 G. 信息论
#3 熵：联合熵与条件熵 (Entropy, Joint &amp; Conditional Entropy)
一句话: 香农熵度量分布的不确定性 H(X)=-Σp·log p；联合/条件熵刻画多变量不确定性及"知道 Y 后还剩多少"。
何时用: 信号——"哪个特征/分布更随机"、"信息量量化"；数据科学例：决策树信息增益、数据集纯度度量。
输入/输出: 概率分布 → 熵值（log2 得 bits，ln 得 nats）；H(X,Y)-H(Y)=H(X|Y)
陷阱: 对数底数混用导致单位混乱；约定 0·log0=0，计算前先清理零概率项。
参考: https://en.wikipedia.org/wiki/Entropy_(information_theory)
#3 KL 散度 (Kullback-Leibler Divergence)
一句话: 用 Q 近似 P 的平均信息损失，D(P‖Q)≥0 且不对称，是分布差异的基础度量。
何时用: 信号——"两个分布差多少"、"变分推断/知识蒸馏的目标函数"；金融例：度量真实收益分布与模型分布的偏离。
输入/输出: 两个分布 P、Q → 非负标量（不对称！）
陷阱: 方向不可随意换：D(P‖Q)≠D(Q‖P)；Q 在 P 支撑外取零时散度为无穷，连续情形要核对测度。
参考: https://en.wikipedia.org/wiki/Kullback%E2%80%93Leibler_divergence
#3 互信息 (Mutual Information)
一句话: I(X;Y)=KL(P(X,Y)‖P(X)P(Y))，度量知道一个变量能减少另一个多少不确定性，可捕捉非线性依赖。
何时用: 信号——"特征与标签有没有非线性关系"、"变量冗余度"；数据科学例：互信息特征选择、变量依赖网络。
输入/输出: 联合分布（或样本估计）→ I(X;Y)≥0，对称
陷阱: 连续变量的互信息估计对分箱/带宽极敏感、高维下偏差大，用 k-NN（Kraskov）类估计量并报告不确定性。
参考: https://en.wikipedia.org/wiki/Mutual_information
#3 交叉熵与极大似然的联系 (Cross-Entropy &amp; MLE Connection)
一句话: H(P,Q)=H(P)+KL(P‖Q)，最小化交叉熵等价于极大似然——分类损失函数的统计根源。
何时用: 信号——"为什么用交叉熵当损失"、"模型校准"；数据科学例：神经网络分类损失、语言模型困惑度（2^H）。
输入/输出: 真分布 P + 预测分布 Q → 交叉熵/平均损失
陷阱: logits 进交叉熵必须用内置 softmax 的数值稳定实现（log-sum-exp），手写 exp 易上溢。
参考: https://en.wikipedia.org/wiki/Cross-entropy
#3 编码定理要点：信源编码与信道容量 (Shannon's Source Coding Theorem &amp; Channel Capacity)
一句话: 香农第一定理：最优平均码长的下界是熵；第二定理：信道以低于容量 C 的速率可实现可靠传输。
何时用: 信号——"数据压缩的极限在哪"、"有噪通道最多传多快"；抽象应用：以"最小描述长度"直觉衡量模型复杂度（MDL）。
输入/输出: 分布熵 H / 信道转移矩阵 → 压缩下界 / 容量 C
陷阱: 定理是渐近结论，短块编码达不到熵界；容量依赖具体信道模型，"香农极限"不能当口号滥用。
参考: https://en.wikipedia.org/wiki/Shannon%27s_source_coding_theorem ；https://en.wikipedia.org/wiki/Channel_capacity
────────────────────────────────────────────────────────────
#2 自检记录
条目数：40（A 概率基础 10 ｜ B 统计推断 6 ｜ C 回归与多元 5 ｜ D 贝叶斯 3 ｜ E 随机过程 6 ｜ F 时间序列 5 ｜ G 信息论 5）
参考来源：全部为 Wikipedia 规范条目 URL 或已实测可访问的权威站点（MIT OCW 18.05、statsmodels tsa、NIST e-Handbook 均于 2026-09-25 实测可访问）；Wikipedia 域在本运行时被网络策略拦截无法在线抽查，但所有条目名均为长期稳定的规范页面名，未使用任何编造或占位链接。
────────────────────────────────────────────────────────────
#1 第四部分：数值·优化·机器学习·符号计算（38 工具）
#1 域D：数值分析·优化·运筹·蒙特卡洛·ML数学·符号计算·计算几何 工具索引
#2 域总览
本域覆盖智能体"数学大脑"的工具链主干，回答四类问题：怎么算得准（数值分析：浮点、插值、最小二乘、积分、迭代法）；怎么选得优（优化与运筹：凸优化、KKT、LP/QP、排队论、MDP、动态规划）；怎么估得快（蒙特卡洛：直接/重要性/拒绝采样、方差缩减、QMC）；怎么学得动（ML数学：偏差-方差、VC维、核方法、EM、反向传播、注意力）。外加两座桥：符号计算（自动微分、CAS）连接推导与代码，计算几何处理空间结构。选型原则：先看问题代数结构（凸/线性/马尔可夫/无结构），再选封闭式解、凸求解器或全局方法；所有浮点计算默认警惕条件数与舍入误差。
────────────────────────────────────────────────────────────
#2 一、数值分析基础
#3 浮点算术与机器精度 (Floating-point Arithmetic &amp; Machine Epsilon)
一句话: IEEE 754 双精度下实数的近似表示体系，机器精度 ε≈2.2e-16 是相对舍入的基本尺度。
何时用: 任何比较浮点相等、累加大数组、判断"结果接近零"的场景；量化回测中的价格/收益累加。
输入/输出: 实数运算 → 带舍入误差的离散表示；ε 定义为使 1+ε≠1 的最小正数。
陷阱: 用 == 判浮点相等，或用绝对阈值代替相对阈值——应比较 |a-b| &lt;= atol + rtol*|b|。
参考: https://en.wikipedia.org/wiki/Machine_epsilon ；https://docs.oracle.com/cd/E19957-01/806-3568/ncg_goldberg.html
#3 条件数 (Condition Number)
一句话: 衡量问题对输入扰动的放大倍数，κ(A)=σ_max/σ_min，描述"问题本身的病态度"而非算法缺陷。
何时用: 解 Ax=b 前预估解可靠位数；最小二乘设计矩阵共线时；判断数值结果可信度。
输入/输出: 矩阵/函数 → 标量条件数；κ≈10^k 意味着解约损失 k 位有效数字。
陷阱: 用矩阵范数求逆来算 κ 本身就病态；κ 大不代表必错，但任何一位有效数字都不可轻信。
参考: https://en.wikipedia.org/wiki/Condition_number ；https://ocw.mit.edu/courses/18-06-linear-algebra-spring-2010/
#3 二分法 (Bisection Method)
一句话: 在已知变号区间 [a,b] 上每步砍半逼近连续函数零点，线性收敛但绝对可靠。
何时用: 要求"保证找到根"的稳健兜底：隐含波动率反解、到期收益率求解、函数不可导或牛顿发散时。
输入/输出: 连续函数 f 与 f(a)f(b)&lt;0 的区间 → 零点近似，n 步后误差 ≤(b−a)/2ⁿ。
陷阱: 忘了先检查端点变号（偶数重零点不变号）；收敛慢，别用于高维。
参考: https://en.wikipedia.org/wiki/Bisection_method ；https://docs.scipy.org/doc/scipy/reference/generated/scipy.optimize.brentq.html
#3 牛顿迭代法 (Newton's Method)
一句话: 用一阶泰勒展开的零点反复更新 x←x−f/f′，二次收敛但依赖好初值与可导性。
何时用: 光滑函数快速求根：隐含波动率、逻辑回归 IRLS、KKT 方程组求根。
输入/输出: f、f′ 与初值 → 根的近似；每步误差平方级缩小。
陷阱: 初值落在平坦区或非凸段会振荡发散，导数接近零时除零；工程上用 Brent 法（二分兜底）更稳。
参考: https://en.wikipedia.org/wiki/Newton%27s_method ；https://docs.scipy.org/doc/scipy/reference/generated/scipy.optimize.newton.html
#3 多项式插值 (Lagrange Interpolation)
一句话: n+1 个点唯一确定 n 次多项式，拉格朗日基函数给出显式表示。
何时用: 少量精确数据点需连续函数表示：收益率曲线粗插值、查表函数化。
输入/输出: 节点 (xᵢ,yᵢ) → 多项式 p(x)，任意 x 可求值。
陷阱: 高次+等距节点触发龙格振荡，n&gt;10 基本不可用；实践用低次分段或切比雪夫节点。
参考: https://en.wikipedia.org/wiki/Lagrange_polynomial ；https://en.wikipedia.org/wiki/Runge%27s_phenomenon
#3 样条插值 (Spline Interpolation)
一句话: 分段低次多项式在节点处保持连续性（三次样条 C² 连续），兼顾光滑与稳定。
何时用: 零息收益率曲线、波动率微笑插值、机器人轨迹、图形学曲线——点多且要平滑的场景。
输入/输出: 节点集 → 分段多项式；需指定端点条件（自然/钳位/not-a-knot）。
陷阱: 外推区域行为失控（三次样条可能剧烈翘曲），只在数据范围内使用。
参考: https://en.wikipedia.org/wiki/Spline_interpolation ；https://docs.scipy.org/doc/scipy/reference/interpolate.html
#3 最小二乘法 (Least Squares)
一句话: 最小化残差平方和求线性模型系数，正规方程 AᵀAx=Aᵀb，是回归与曲线拟合的基石。
何时用: 超定数据拟合线性关系：因子模型、传感器标定、非线性拟合的参数初值。
输入/输出: 设计矩阵 A 与观测 b → x̂=(AᵀA)⁻¹Aᵀb；可加权或加正则（岭回归）。
陷阱: 别按正规方程直接求逆（条件数被平方放大），用 QR 或 SVD 求解。
参考: https://en.wikipedia.org/wiki/Least_squares ；https://ocw.mit.edu/courses/18-06-linear-algebra-spring-2010/
#3 数值积分 (Numerical Integration / Quadrature)
一句话: 用节点加权求和近似定积分，梯形/辛普森到高斯求积误差阶依次提高。
何时用: 无闭式原函数的积分：期权解析式中的正态项、贝叶斯边际似然、物理仿真。
输入/输出: 被积函数与区间 → 积分近似值；n 点高斯求积对 2n−1 次多项式精确。
陷阱: 奇异/振荡被积函数直接套用误差巨大；维度 d≳4 出现维度灾难，应换蒙特卡洛。
参考: https://en.wikipedia.org/wiki/Numerical_integration ；https://en.wikipedia.org/wiki/Gaussian_quadrature
#3 共轭梯度法 (Conjugate Gradient Method)
一句话: 解对称正定 Ax=b 的 Krylov 子空间迭代，只需矩阵-向量乘，是大规模稀疏线性系统标配。
何时用: PDE 有限元、图拉普拉斯、大规模回归正规方程等大型稀疏 SPD 系统。
输入/输出: SPD 矩阵（或算子）、b、容差 → 迭代近似解；每步一次 A@v。
陷阱: 矩阵非 SPD 会静默不收敛；浮点下需预处理（对角/Jacobi），且别指望精确 n 步收敛。
参考: https://en.wikipedia.org/wiki/Conjugate_gradient_method ；https://docs.scipy.org/doc/scipy/reference/generated/scipy.sparse.linalg.cg.html
#3 特征值算法概览 (QR Algorithm / Eigenvalue Algorithms)
一句话: QR 迭代配合 Householder 变换与位移策略求全部特征值，是 LAPACK 的核心引擎。
何时用: PCA 协方差谱、谱聚类、系统稳定性分析、马尔可夫链稳态分布。
输入/输出: 方阵 → 特征值（配特征向量）；对称阵用对称专用算法更快更稳。
陷阱: 非对称矩阵特征值可能复数且病态；只要最大/最小特征值时用幂法或 Lanczos 而非全谱分解。
参考: https://en.wikipedia.org/wiki/QR_algorithm ；https://netlib.org/lapack/
────────────────────────────────────────────────────────────
#2 二、优化
#3 凸性判定 (Convexity Check)
一句话: 判定目标与可行域是否凸（一阶条件 f(y)≥f(x)+∇f(x)ᵀ(y−x)，二阶 Hessian 半正定），凸则局部最优即全局最优。
何时用: 设计优化管线前先验凸性，决定走闭式解/凸求解器还是全局方法。
输入/输出: 目标函数与约束 → 凸/非凸结论；可用保凸运算（加法、非负加权和、仿射复合、逐点最大化）构建证明。
陷阱: "看起来凸"不等于凸——只能证凸、难以证非凸；把 max 与仿射复合的保凸方向搞反是常见错误。
参考: https://web.stanford.edu/~boyd/cvxbook/ ；https://en.wikipedia.org/wiki/Convex_function
#3 梯度下降家族 (SGD / Momentum / Adam)
一句话: 沿负梯度迭代下降：SGD 加随机性、动量累积惯性、Adam 用一/二阶矩自适应逐参数步长。
何时用: 大规模可微损失：深度网络训练、大规模回归、矩阵分解推荐。
输入/输出: 可微目标+学习率策略 → 参数迭代序列；Adam 常用 (lr=1e-3, β₁=0.9, β₂=0.999)。
陷阱: 学习率过大发散、过小假停滞；带噪声的 minibatch 曲线需平滑后再诊断；Adam 与 L2 正则要区分（解耦权重衰减）。
参考: https://en.wikipedia.org/wiki/Stochastic_gradient_descent ；https://arxiv.org/abs/1412.6980
#3 牛顿法与拟牛顿 (Newton &amp; BFGS / L-BFGS)
一句话: 用曲率加速下降：牛顿解 H∇f=−∇f，BFGS 用历史梯度低秩近似逆 Hessian，L-BFGS 省内存。
何时用: 中小规模平滑无约束问题要高精度收敛：模型校准、超参微调；大维度用 L-BFGS。
输入/输出: 一阶可导目标 → 迭代点列；线搜索保证每步下降。
陷阱: 非凸时 Hessian 不定会走错方向（需阻尼或信赖域）；目标不可导（|x|、ReLU）时直接用会翻车。
参考: https://en.wikipedia.org/wiki/Broyden%E2%80%93Fletcher%E2%80%93Goldfarb%E2%80%93Shanno_algorithm ；https://docs.scipy.org/doc/scipy/reference/generated/scipy.optimize.minimize.html
#3 KKT 条件 (Karush–Kuhn–Tucker Conditions)
一句话: 约束最优化的必要条件（凸时充分）：拉格朗日驻点 + 原始/对偶可行 + 互补松弛。
何时用: 推导解的结构：马科维茨组合、SVM 对偶、资源影子价格、校验求解器输出。
输入/输出: 原问题 → KKT 方程组；直接解 KKT（鞍点形式）常比解原问题更稳定。
陷阱: 非凸或缺 Slater 条件时强对偶不成立，KKT 只是必要不充分；不等式约束 active 集合判错则解全错。
参考: https://en.wikipedia.org/wiki/Karush%E2%80%93Kuhn%E2%80%93Tucker_conditions ；https://web.stanford.edu/~boyd/cvxbook/
#3 线性规划：单纯形法 (Linear Programming: Simplex)
一句话: 沿可行多面体顶点游走改进目标，实践极快，理论最坏指数复杂度。
何时用: 线性目标+线性约束：资源分配、运输排产、对冲构建、资产组合线性约束。
输入/输出: min cᵀx s.t. Ax≤b → 最优顶点解与影子价格；生产上直接调 HiGHS/Gurobi。
陷阱: 退化顶点可能循环（靠 Bland 规则/微扰）；约束量纲相差多个数量级会拖垮数值精度，先做缩放归一。
参考: https://en.wikipedia.org/wiki/Simplex_algorithm ；https://en.wikipedia.org/wiki/Linear_programming
#3 线性规划对偶 (LP Duality)
一句话: 每个 LP 都有对偶问题：弱对偶给界、强对偶给等值，对偶变量即约束的影子价格。
何时用: 读出"哪个约束在卡脖子"为资源定价、灵敏度分析、给解的最优性构造下界证明。
输入/输出: 原问题 (c,A,b) → 对偶问题；最优时两者目标值相等。
陷阱: 原始无界 ↔ 对偶不可行，解读前先检查双方可行性；由互补松弛，对偶变量只在紧约束处非零。
参考: https://en.wikipedia.org/wiki/Dual_linear_program ；https://en.wikipedia.org/wiki/Strong_duality
#3 凸优化与二次规划 (Convex Optimization &amp; QP)
一句话: 凸目标+凸可行域的统一框架（Disciplined Convex Programming），QP（二次目标+线性约束）是最常用特例。
何时用: 组合优化（马科维茨）、SVM、模型预测控制、带约束最小二乘——识别为凸即可用成熟求解器拿全局最优。
输入/输出: 凸问题表述 → 全局最优解与对偶信息；求解器 OSQP/ECOS/Clarabel。
陷阱: 约束与目标量纲失衡导致求解器病态报错；含 rank/整数约束的"伪凸 QP"会被静默解成局部解。
参考: https://web.stanford.edu/~boyd/cvxbook/ ；https://en.wikipedia.org/wiki/Quadratic_programming
#3 模拟退火 (Simulated Annealing)
一句话: 借冶金退火思想的随机全局搜索：高温按 min(1,exp(−Δ/T)) 允许劣化跳坑，降温逐步冻结。
何时用: 组合/非凸连续问题的兜底方案：TSP、排班、电路布局、特征子集选择。
输入/输出: 目标函数+邻域结构+温度调度 → 近似全局最优解。
陷阱: 降温太快退化成贪心爬山、太慢浪费时间；无收敛证书，须多次独立重启取最优。
参考: https://en.wikipedia.org/wiki/Simulated_annealing
#3 贝叶斯优化 (Bayesian Optimization)
一句话: 用高斯过程代理昂贵黑盒目标+采集函数（EI/UCB）平衡探索与利用，逐步逼近最优。
何时用: 单次评估极贵的优化：超参调优、实验设计、仿真参数校准——评估预算几十到几百次。
输入/输出: 黑盒目标+搜索域 → 建议的下一个评估点序列及当前最优。
陷阱: 维度超过约 20 维后 GP 代理失效；观测噪声大或目标非平稳时核函数选错会系统性误导。
参考: https://en.wikipedia.org/wiki/Bayesian_optimization ；https://arxiv.org/abs/1012.2599
────────────────────────────────────────────────────────────
#2 三、运筹学
#3 排队论 M/M/1 模型 (M/M/1 Queue)
一句话: 泊松到达+指数服务时间的单队列模型，利用率 ρ=λ/μ，稳态平均队长 L=ρ/(1−ρ)。
何时用: 容量规划：客服人力、交易撮合队列、API 限流、算力调度——"到达随机、服务有波动"的信号。
输入/输出: 到达率 λ、服务率 μ → 平均队长、等待时间 Wq=ρ/(μ−λ)；ρ≥1 队列爆炸。
陷阱: ρ 接近 1 时等待时间对 λ 极其敏感（现实系统按 70–80% 利用率设计）；真实到达过程非泊松时结论失真。
参考: https://en.wikipedia.org/wiki/M/M/1_queue ；https://en.wikipedia.org/wiki/Queueing_theory
#3 马尔可夫决策过程 (Markov Decision Process)
一句话: 五元组 (S,A,P,r,γ) 的序贯决策形式化，是强化学习与多期决策的标准模型。
何时用: 库存补货、动态定价与调仓、设备维护调度、机器人控制——"今天的决策影响明天的状态"。
输入/输出: MDP 定义 → 最优策略 π*（值迭代/策略迭代求解），即贝尔曼最优方程的不动点。
陷阱: 状态空间指数膨胀（维度灾难）；现实中转移矩阵未知需从数据估计，别假设已知。
参考: https://en.wikipedia.org/wiki/Markov_decision_process ；http://incompleteideas.net/the-book-2nd.html
#3 动态规划与贝尔曼方程 (Dynamic Programming &amp; Bellman Equation)
一句话: 把多阶段决策分解为重叠子问题，贝尔曼方程 V(s)=max_a[r+γEV(s′)] 给出递推结构。
何时用: 有最优子结构的阶段决策：背包、编辑距离、设备更换、美式期权行权（LSM）、多期资产配置。
输入/输出: 状态/决策/报酬结构 → 最优值函数与最优策略；正向递推、回溯取策略。
陷阱: 状态设计漏变量会破坏无后效性；连续状态需离散化或函数近似，精度与维数的取舍是核心难点。
参考: https://en.wikipedia.org/wiki/Bellman_equation ；https://en.wikipedia.org/wiki/Dynamic_programming
────────────────────────────────────────────────────────────
#2 四、蒙特卡洛方法
#3 蒙特卡洛直接采样 (Direct Monte Carlo)
一句话: 用独立样本均值估计期望 E[f(X)]≈(1/N)Σf(xᵢ)，误差 O(1/√N) 且与维度无关。
何时用: 高维积分/期望：期权定价、VaR 模拟、粒子输运、贝叶斯预测分布。
输入/输出: 分布与函数 → 估计值+标准误；标准误按 1/√N 衰减。
陷阱: 不报标准误的 MC 估计不可信；稀有事件（尾部概率 1e-6）直接采样效率极低，需重要性采样。
参考: https://en.wikipedia.org/wiki/Monte_Carlo_method ；https://en.wikipedia.org/wiki/Monte_Carlo_integration
#3 重要性采样 (Importance Sampling)
一句话: 从易采样的提议分布 q 采样，用权重 p/q 重加权，估计目标分布 p 下的期望。
何时用: 稀有事件（极端损失、系统故障概率）、离线策略评估、贝叶斯证据近似。
输入/输出: 目标密度 p、提议 q → 加权估计；权重期望为 1。
陷阱: q 的尾部比 p 窄会导致权重方差爆炸（最危险情形是权重无界）；诊断必看有效样本量 ESS。
参考: https://en.wikipedia.org/wiki/Importance_sampling
#3 拒绝采样 (Rejection Sampling)
一句话: 用包络密度 Mq 做接受-拒绝，接受概率 1/M，从可求值但难采样的分布生成样本。
何时用: 目标密度可计算但无现成采样器：非常规分布、截断分布、条件分布。
输入/输出: 密度 p（可差常数因子）+包络 Mq → 服从 p 的独立样本。
陷阱: 高维下接受率指数衰减，d&gt;5 就该换 MCMC 或变换法；包络常数不足时分布偏差且极难察觉。
参考: https://en.wikipedia.org/wiki/Rejection_sampling
#3 方差缩减：对偶变量与控制变量 (Antithetic &amp; Control Variates)
一句话: 用相关性对冲随机性：对偶变量把 f(X) 与 f(−X) 配对平均，控制变量用期望已知的伴生量修正估计。
何时用: 路径依赖期权定价、工程仿真提速——同一精度下可省数倍样本。
输入/输出: 原始估计量 → 方差更小的修正估计量；控制变量法需先估计相关系数。
陷阱: 控制变量与目标相关性弱（或负相关）反而增大方差；对偶变量要求函数对称性匹配得当。
参考: https://en.wikipedia.org/wiki/Antithetic_variates ；https://en.wikipedia.org/wiki/Control_variates
#3 拟蒙特卡洛 (Quasi-Monte Carlo, QMC)
一句话: 用低差异确定性序列（Sobol/Halton）替代伪随机数，积分误差从 O(1/√N) 改善到近 O(N⁻¹)。
何时用: 中低维高精度积分：高维路径期权定价、全局敏感性分析、渲染采样。
输入/输出: 积分维度与被积函数 → 低差异点列+估计值；随机化 (RQMC) 后可报标准误。
陷阱: 被积函数不光滑时优势大幅缩水；纯确定性点列没有误差估计，必须随机化才能给置信区间。
参考: https://en.wikipedia.org/wiki/Quasi-Monte_Carlo_method
────────────────────────────────────────────────────────────
#2 五、机器学习数学
#3 偏差-方差权衡 (Bias–Variance Tradeoff)
一句话: 泛化误差 = 偏差² + 方差 + 不可约噪声，模型复杂度从欠拟合到过拟合呈 U 形曲线。
何时用: 选模型容量、诊断训练/验证误差差距、定正则强度、在 bagging（降方差）与 boosting（降偏差）间选型。
输入/输出: 模型族与数据 → 训练/验证误差曲线；用交叉验证定位最优复杂度。
陷阱: 该分解只在平方损失下严格成立（0-1 损失有推广版）；验证集太小时最优点估计抖动大。
参考: https://en.wikipedia.org/wiki/Bias%E2%80%93variance_tradeoff
#3 VC 维 (VC Dimension)
一句话: 假设空间能打散的最大样本数，给出泛化误差随容量 √(VCdim/N) 增长的理论界。
何时用: 论证样本复杂度、比较模型族表达力、理论分析与面试——工程上多被交叉验证替代。
输入/输出: 假设空间 H → 整数 VCdim；样本需求随 VCdim 线性、误差按其平方根增长。
陷阱: 界非常松（实际所需样本远小于界值），只能定性比较；对深度网络的 VC 维分析无实践指导力。
参考: https://en.wikipedia.org/wiki/VC_dimension
#3 核方法与再生核希尔伯特空间 (Kernel Methods &amp; RKHS)
一句话: 核函数 k(x,y)=⟨φ(x),φ(y)⟩ 隐式映射到高维空间做线性学习，RKHS 是该空间的形式化基础。
何时用: 中小样本非线性回归/分类（SVM/SVR）、高斯过程回归、两样本检验 (MMD)、形状对齐。
输入/输出: 核函数+数据 → n×n Gram 矩阵上的学习问题；预测是训练样本的核加权组合。
陷阱: n 大时 Gram 矩阵 O(n²) 内存爆炸；RBF 带宽等核超参不调会严重欠/过拟合，必须交叉验证。
参考: https://en.wikipedia.org/wiki/Kernel_method ；https://en.wikipedia.org/wiki/Reproducing_kernel_Hilbert_space
#3 EM 算法 (Expectation–Maximization Algorithm)
一句话: 含隐变量极大化的迭代法：E 步算隐变量后验期望，M 步最大化完全数据似然，保证似然单调不降。
何时用: GMM 聚类、HMM 训练、缺失数据插补、混合比例估计——"存在看不见的变量"的信号。
输入/输出: 带隐变量的模型与观测 → 参数估计序列，收敛到局部极大。
陷阱: 只保证局部最优，对初始化敏感（需多重启）；E 步算不出精确后验时换变分 EM；可能收敛到边界/鞍点。
参考: https://en.wikipedia.org/wiki/Expectation%E2%80%93maximization_algorithm
#3 反向传播 (Backpropagation)
一句话: 用链式法则沿计算图反向累积梯度，一次反向扫描得到全部参数的精确偏导。
何时用: 一切基于梯度的神经网络训练；也用于可微仿真、物理信息网络的参数求导。
输入/输出: 前向计算图+损失标量 → 每个参数/中间量的偏导数；计算量约等于两次前向传播。
陷阱: 深层连乘导致梯度消失/爆炸；自定义层上线前必须做有限差分梯度检验；不可导操作（argmax/采样）处会断图。
参考: https://en.wikipedia.org/wiki/Backpropagation ；https://cs231n.github.io/optimization-2/
#3 缩放点积注意力 (Scaled Dot-Product Attention)
一句话: softmax(QKᵀ/√d)V 对值序列加权聚合，√d 缩放把点积方差拉回 1 防止 softmax 饱和。
何时用: Transformer 全家（语言/视觉/时间序列）、检索召回、集合函数建模——"序列元素两两相关"的信号。
输入/输出: Q,K,V∈R^{n×d} → 注意力权重与聚合输出；复杂度 O(n²d)。
陷阱: 不除 √d 则 logits 过大、softmax 梯度消失；长序列 O(n²) 内存瓶颈需稀疏/线性注意力；softmax 数值上要减 max 稳定化。
参考: https://arxiv.org/abs/1706.03762 ；https://en.wikipedia.org/wiki/Transformer_(deep_learning_architecture)
#3 万能逼近定理 (Universal Approximation Theorem)
一句话: 单隐层前馈网络宽度足够时可在紧集上以任意精度逼近任意连续函数——神经网络表达力的理论背书。
何时用: 概念澄清：判断"表达能力不是瓶颈，瓶颈在数据与优化"；理论分析与面试。
输入/输出: 连续函数 f 与误差 ε → 存在有限宽度网络 g 使 ‖f−g‖&lt;ε；不告诉你宽度多大、如何训练出来。
陷阱: 存在性≠可学习性：样本、优化、泛化是另外三回事；该定理也解释不了深度网络的深度效率优势。
参考: https://en.wikipedia.org/wiki/Universal_approximation_theorem
────────────────────────────────────────────────────────────
#2 六、符号计算
#3 自动微分 (Automatic Differentiation, forward/reverse)
一句话: 把程序分解为基本算子后按链式法则精确传播导数：前向模式一次算一个输入方向 (JVP)，反向模式一次算全部参数梯度 (VJP)。
何时用: 任何"代码写出的函数要求导"：训练网络、优化校准、仿真灵敏度分析、隐函数定理式求根。
输入/输出: 程序 f: Rⁿ→Rᵐ → 机器精度级精确导数；输入维少用前向、输出维少用反向。
陷阱: 不是数值差分也不是符号展开——但问题本身病态时梯度"精确而无用"；分支 if 与原地修改变量会悄悄制造错误计算图。
参考: https://en.wikipedia.org/wiki/Automatic_differentiation ；https://arxiv.org/abs/1502.05767
#3 计算机代数系统 (SymPy / CAS)
一句话: 符号级代数引擎：解析求导/积分、方程求解、极限、级数展开、表达式化简，输出精确符号结果。
何时用: 推导演算与校验、给数值代码生成精确公式（如解析雅可比）、公式变换与教学演示。
输入/输出: 符号表达式 → 化简/求导/积分后的表达式；可 lambdify 编译成 numpy 数值函数。
陷阱: 中间表达式指数膨胀（符号膨胀）；"积不出来"≠积分不存在（多数积分本无初等闭式）；符号结果数值代入前先化简。
参考: https://www.sympy.org/ ；https://en.wikipedia.org/wiki/Computer_algebra_system
────────────────────────────────────────────────────────────
#2 七、计算几何
#3 凸包 (Convex Hull: Graham Scan / Andrew's Monotone Chain)
一句话: 求包住点集的最小凸多边形：Graham 扫描按极角排序用栈维护，Andrew 单调链按 x 排序后上下链各扫一遍，均 O(n log n)。
何时用: 地理围栏、碰撞检测外扩、投资组合可达集边界、聚类外形勾勒、离群点检测。
输入/输出: 平面点集 → 逆时针顶点序列。
陷阱: 共线点与重复点的严格/非严格处理不一致；浮点叉积判转向要用相对容差，防边界点误判。
参考: https://en.wikipedia.org/wiki/Graham_scan ；https://en.wikipedia.org/wiki/Convex_hull_algorithms
#3 Voronoi 图与 Delaunay 三角剖分 (Voronoi Diagram &amp; Delaunay Triangulation)
一句话: 对偶的空间结构对：Voronoi 按最近邻划分平面，Delaunay 连接共享 Voronoi 边的点对并最大化三角形最小角。
何时用: 最近设施查询、自然邻域插值、气象站空间插值、网格生成、路径避障。
输入/输出: 平面点集 → Voronoi 单元 / Delaunay 三角网格；可 O(n log n) 构造。
陷阱: 四点共圆退化需微扰处理；外推区域的无限大单元/超大外接三角形容易被误当真实结构使用。
参考: https://en.wikipedia.org/wiki/Voronoi_diagram ；https://en.wikipedia.org/wiki/Delaunay_triangulation
────────────────────────────────────────────────────────────
*条目合计：38 条。收集员 D' 产，参考链接均为长期稳定权威页（Wikipedia 规范条目 / NIST 级教材官网 / arXiv 经典论文），未做逐一在线验证。*
────────────────────────────────────────────────────────────
#2 参考文献 (References)
「说明：全量 257 条参考以行内链接形式存在于各工具条目内（每条 1-2 条）。以下为跨域核心权威来源汇总（标准格式），供快速核查；行内链接与下表同源同性质（公开权威页）。」
#3 1. NIST Digital Library of Mathematical Functions (DLMF)
来源: NIST
时间: 持续维护
链接: https://dlmf.nist.gov/
#3 2. Wikipedia Mathematics Portal（本报告多数条目的参考域）
来源: Wikipedia (en)
时间: 持续维护
链接: https://en.wikipedia.org/wiki/Portal:Mathematics
#3 3. MIT OpenCourseWare — Mathematics
来源: MIT OCW
时间: 持续维护
链接: https://ocw.mit.edu/search/?d=Mathematics
#3 4. Cauchy–Schwarz inequality
来源: Wikipedia (en)
链接: https://en.wikipedia.org/wiki/Cauchy%E2%80%93Schwarz_inequality
#3 5. Singular value decomposition
来源: Wikipedia (en)
链接: https://en.wikipedia.org/wiki/Singular_value_decomposition
#3 6. Master theorem (analysis of algorithms)
来源: Wikipedia (en)
链接: https://en.wikipedia.org/wiki/Master_theorem_(analysis_of_algorithms)
#3 7. Taylor's theorem
来源: Wikipedia (en)
链接: https://en.wikipedia.org/wiki/Taylor%27s_theorem
#3 8. Fast Fourier transform
来源: Wikipedia (en)
链接: https://en.wikipedia.org/wiki/Fast_Fourier_transform
#3 9. Runge–Kutta methods
来源: Wikipedia (en)
链接: https://en.wikipedia.org/wiki/Runge%E2%80%93Kutta_methods
#3 10. Bayes' theorem
来源: Wikipedia (en)
链接: https://en.wikipedia.org/wiki/Bayes%27_theorem
#3 11. Maximum likelihood estimation
来源: Wikipedia (en)
链接: https://en.wikipedia.org/wiki/Maximum_likelihood_estimation
#3 12. Central limit theorem
来源: Wikipedia (en)
链接: https://en.wikipedia.org/wiki/Central_limit_theorem
#3 13. Markov chain
来源: Wikipedia (en)
链接: https://en.wikipedia.org/wiki/Markov_chain
#3 14. Kalman filter
来源: Wikipedia (en)
链接: https://en.wikipedia.org/wiki/Kalman_filter
#3 15. Kullback–Leibler divergence
来源: Wikipedia (en)
链接: https://en.wikipedia.org/wiki/Kullback%E2%80%93Leibler_divergence
#3 16. Autoregressive integrated moving average (ARIMA)
来源: Wikipedia (en)
链接: https://en.wikipedia.org/wiki/Autoregressive_integrated_moving_average
#3 17. Autoregressive conditional heteroskedasticity (GARCH)
来源: Wikipedia (en)
链接: https://en.wikipedia.org/wiki/Autoregressive_conditional_heteroskedasticity
#3 18. MIT OCW 18.05 Introduction to Probability and Statistics
来源: MIT OCW
时间: Spring 2022 版
链接: https://ocw.mit.edu/courses/18-05-introduction-to-probability-and-statistics-spring-2022/
#3 19. NIST/SEMATECH e-Handbook of Statistical Methods
来源: NIST
链接: https://www.itl.nist.gov/div898/handbook/
#3 20. statsmodels Time Series analysis (tsa)
来源: statsmodels 官方文档
链接: https://www.statsmodels.org/stable/tsa.html
#3 21. Condition number
来源: Wikipedia (en)
链接: https://en.wikipedia.org/wiki/Condition_number
#3 22. Newton's method
来源: Wikipedia (en)
链接: https://en.wikipedia.org/wiki/Newton%27s_method
#3 23. Karush–Kuhn–Tucker conditions
来源: Wikipedia (en)
链接: https://en.wikipedia.org/wiki/Karush%E2%80%93Kuhn%E2%80%93Tucker_conditions
#3 24. Simplex algorithm
来源: Wikipedia (en)
链接: https://en.wikipedia.org/wiki/Simplex_algorithm
#3 25. Monte Carlo method
来源: Wikipedia (en)
链接: https://en.wikipedia.org/wiki/Monte_Carlo_method
#3 26. Importance sampling
来源: Wikipedia (en)
链接: https://en.wikipedia.org/wiki/Importance_sampling
#3 27. Automatic differentiation
来源: Wikipedia (en)
链接: https://en.wikipedia.org/wiki/Automatic_differentiation
#3 28. Sutton &amp; Barto — Reinforcement Learning: An Introduction (2nd ed.)
来源: 官方全书页面 (incompleteideas.net)
时间: 2018
链接: http://incompleteideas.net/book/the-book-2nd.html
#3 29. Convex hull
来源: Wikipedia (en)
链接: https://en.wikipedia.org/wiki/Convex_hull
#3 30. SymPy — Python library for symbolic mathematics
来源: SymPy 官方文档
链接: https://www.sympy.org/en/docs.html
────────────────────────────────────────────────────────────
*本报告由 deep-research 四收集员并行调研 + 主笔综合生成。数学工具知识为稳定知识，参考链接以权威稳定页为主；D 域链接为"确信直写"策略未逐一核验（详见研究方法节）。*