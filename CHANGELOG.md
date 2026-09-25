# Changelog

## v1.0.0 · 2026-09-25

首个版本。与姊妹项目 [agent-taste-seed-system](https://github.com/hhx465453939/agent-taste-seed-system)（美学大脑）同一套「注入 + 薄 skill + 厚 reference」框架的数学版。

- **种子来源**：《面向智能体的数学工具索引》（Mathematical Tools Index for AI Agents）v1.0（2026-09-25，深度调研产出）：157 个数学工具 / 四域 27 子类，统一 schema（一句话/何时用/输入输出/陷阱/参考，共 257 条行内权威链接）。源 docx 与 md 提取版归档于 `sources/`。
- **四层知识库建档**（重 agent 按需加载，禁止全文注入）：
  - `references/domains/` ×4域27子类：157 条工具全量六字段零删减重组，每条新增**代码锚点**字段（直达 numpy/scipy/statsmodels/sympy/sklearn/networkx 真实 API，或指向 recipes 卡）；
  - `references/scenarios/` ×12：问题场景档（数据变换与关系推理/增长变化与积累/周期信号与频域/不确定性与统计推断/预测时序与波动率/信息压缩与分布距离/大规模计算与精度危机/拟合调参与最优决策/随机模拟与难解积分/学习建模与泛化诊断/精确推导与公式化简/计数离散结构与空间），每份含主推工具组详解 + 备选速览 + 翻车清单；
  - `references/recipes/` ×12：模板代码卡（线性代数与矩阵分解/图论与离散算法/微积分与数值积分/ODE与PDE数值解/傅里叶与信号处理/概率分布与统计检验/回归与多元统计/贝叶斯与MCMC/时间序列建模/优化与运筹/蒙特卡洛方法/符号计算与自动微分），每张含 import 锚点 + 每工具可运行代码块（陷阱规避写进注释）+ 代码级反模式；全部代码块经 Python 实际运行验证；
  - `references/math-seeds.md`（L1）：157 工具全量单行速查总表 + 实测日志区。
- **决策层**：`MATH.md`（数学 OS：数学观 5 条 + 六步决策流程 + 信号→场景索引）；`templates/SKILL.md`（Claude Code 薄 skill，四层路由版）。
- **注入层**：`AGENT-INJECTION.md`（通用注入提示词：六步流程 + 浮点三禁 + 统计三查 + 红线）。
- **部署层**：`deploy/`（Claude Code 一键脚本 `install-claude-skill.sh` + CLAUDE.md 薄注入片段；OpenClaw workspace 平铺方案；Codex/通用规则文件方案）；`README.md` 各 agent 复制即用部署指令与验收标准。
- **激活词原理**（与美学大脑同源）：数学工具名是 LLM 预训练知识的标准锚点——「用 Welch's t 检验」「先查条件数」比模糊形容可执行得多；本系统的职责是选对工具名 + 把已知陷阱翻译成规避动作。
- **开源协议**：Apache-2.0——宽松之上带三层保护（专利 retaliation / 商标排除 / NOTICE 署名机制），免责条款与本项目"结论必须带误差棒"的第一课同构。
