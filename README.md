# 🧮 agent-math-seed-system — 给任何 AI Agent 装上数学大脑

> 一套可移植的「数学操作系统 + 工具种子库」，让 Claude Code / Codex / OpenClaw / pi / workbuddy / codebuddy / Trae / Qoder / hermas 等任何智能体，在数学任务上摆脱"默认直觉硬算"。
> 来源：《面向智能体的数学工具索引》（Mathematical Tools Index for AI Agents）v1.0 —— 157 个数学工具 / 四域 27 子类，统一 schema（一句话/何时用/输入输出/陷阱/参考）→ 提炼为可执行的数学决策体系。
> 本仓库：**<仓库地址>**
> 姊妹项目：[agent-taste-seed-system](https://github.com/hhx465453939/agent-taste-seed-system)（美学大脑）—— 同一套「注入 + 薄 skill + 厚 reference」框架

---

## 🚀 一键部署：复制指令发给你的 Agent，它自己装

> **用法（10 秒）**：在下面找到你的 Agent → 点代码块右上角 📋 复制 → 粘贴发给该 Agent → 等它自己完成部署并向你汇报。指令已自足：含仓库地址、安装步骤、汇报要求、防重复安装的防呆，Agent 无需再问你任何问题。

### 🤖 Claude Code

```text
请为本机 Claude Code 安装「数学大脑」（agent-math-seed-system）。

仓库：<仓库地址>

步骤：
1. git clone <仓库地址> ~/agent-math-seed-system（目录已存在则 cd 进去 git pull 更新）
2. bash ~/agent-math-seed-system/deploy/install-claude-skill.sh
   （把 math skill 装进 ~/.claude/skills/math/，含四层种子库：总库/问题场景档/模板代码卡/域章档；脚本自带旧种子库备份）
3. 在 ~/.claude/CLAUDE.md 末尾追加「🧮 数学大脑（Math Seed System）」薄注入节——全文逐字取自 ~/agent-math-seed-system/deploy/claude-code.md 的「薄注入片段」小节；若 CLAUDE.md 已存在同名节则跳过，不要重复追加
4. 完成后向我汇报：skill 安装路径与文件清单、CLAUDE.md 追加结果、让我如何验证生效

注意：不要修改仓库内 references/ 的任何内容（那是种子库本体）。
```

### 🦞 OpenClaw

```text
请为 OpenClaw 工作区安装「数学大脑」（agent-math-seed-system）。

仓库：<仓库地址>

步骤：
1. git clone <仓库地址> ~/agent-math-seed-system（已存在则 git pull）
2. 先读 ~/agent-math-seed-system/deploy/openclaw.md，然后按文档执行：
   - 把仓库的 MATH.md 放到 workspace 根目录，references/ 目录内容**平铺**同步进 workspace 的 math/ 子目录（即 `cp -R references/. <workspace根>/math/`，装完 math/ 下直接是 math-seeds.md 总库与 scenarios//recipes//domains/，**不是** math/references/；龙虾已写过实测日志时先备份 math/math-seeds.md 再覆盖；多龙虾舰队时每个 workspace 各放一份，实测日志各自独立记录）
   - 把仓库 AGENT-INJECTION.md 里的「注入提示词」整段并入该 workspace 的 AGENTS.md 或 SOUL.md（已有同名节则跳过）
3. 完成后向我汇报：文件放置路径、注入位置，以及对龙虾的验证方式（如让它算一个置信区间，看是否先报问题信号与工具选择）
```

### 🧠 Codex

```text
请为本机 Codex 安装「数学大脑」（agent-math-seed-system）。

仓库：<仓库地址>

步骤：
1. git clone <仓库地址> ~/agent-math-seed-system（已存在则 git pull）
2. 读 ~/agent-math-seed-system/deploy/generic-agents.md，按「情形 A：有全局规则文件」执行：在你的全局规则文件（如 ~/.codex/AGENTS.md）末尾追加文档中的薄注入片段（片段里的路径保持 ~/agent-math-seed-system 不变；已有同名节则跳过）
3. 完成后向我汇报：clone 位置、修改的文件、追加的行数，以及下次数学任务你会如何走「信号识别→查库选工具→读陷阱→抄代码→误差棒自检→记实测日志」流程
```

### 🧩 Trae / Qoder / pi / workbuddy / codebuddy / hermas 等其他 Agent（通用版）

```text
请为本 Agent 安装「数学大脑」（数学种子系统）。

仓库：<仓库地址>

步骤：
1. git clone <仓库地址> ~/agent-math-seed-system（已存在则 git pull）
2. 读仓库的 README.md 和 deploy/generic-agents.md，判断你自己的规则加载机制并按对应情形部署：
   - 有全局规则文件 → 在其末尾追加文档中的薄注入片段（已有同名节则跳过）
   - 只有系统提示词/知识库 → 把 AGENT-INJECTION.md 的注入提示词整段并入，MATH.md 与 references/math-seeds.md 作为可读取的知识文件（能放目录就把整个 references/ 放进去，四层全库可用）
3. 部署后自检：用一句话复述你的数学任务工作流（问题信号识别 → 查库选主推工具 → 读条目陷阱 → 抄模板代码 → 陷阱自检与误差棒交付 → 记实测日志）
4. 向我汇报：部署方式、文件位置、自检复述
```

### 🌐 万能版（任意 Agent，含网页 ChatBot）

```text
从现在起装备「数学大脑」。请访问 <仓库地址> 阅读 README.md、MATH.md、AGENT-INJECTION.md（种子库 references/ 目录按需读取，不要全量载入）。

之后所有涉及数学与定量计算的任务（数值计算/统计推断/优化求解/随机模拟/时序预测/信号处理/离散算法/符号推导/机器学习建模/量化金融数学），你都必须：
先识别问题信号（这个问题长什么样：连续/离散/随机/优化/符号）→ 按信号选主推工具 → 读该工具的陷阱字段再动手 → 库函数优先落地（numpy/scipy/statsmodels/sympy）→ 陷阱自检（一句话说出最可能的坑与规避）→ 结论带误差棒（估计报标准误、预测报区间）。

铁律：浮点三禁（禁 == 比较浮点/禁显式求逆解方程/禁不看条件数信答案）；统计三查（前提假设/多重比较校正/p 值正确解读）；有闭式解或专用算法的问题，暴力枚举是失职。
```

> 💡 万能版仅适用于**能联网浏览**的 Agent。若对方无法访问 GitHub：把本仓库的 `MATH.md` 和 `references/math-seeds.md` 下载后作为附件/知识库上传给它，再发上面的指令（去掉第一条访问要求）即可。

### ✅ 部署成功的标准（任何 Agent 通用）

1. 让它做一个数学任务（如「检验 A/B 测试显著性」）：它**先报问题信号与工具选择**再动手
2. 交付时它能**一句话说出所用工具的陷阱与规避方式**
3. 数值结论**带误差棒**（p 值/置信区间/标准误），且种子库副本末尾出现新的实测日志条目

> 无文件写入能力的形态（网页 ChatBot 的附件/知识库）以第 1、2、3 条为准：实测日志由用户代记进自己的副本，或让它在回复末尾口述记录本次工具与成败。

---

## 这是什么

核心思想：**信号即路由，陷阱即护栏** —— 问题形状 × 工具选择 × 陷阱规避 × 库函数落地 × 误差棒交付。
任何需要数学的输出，先识别信号、再选工具。

**适用范围：一切需要数学的产物**——数值计算与精度分析、统计推断与实验设计、优化与运筹、随机模拟、时序预测与信号处理、离散算法与计数、符号推导、机器学习建模，乃至量化金融数学（期权定价/VaR/投资组合）与工程仿真。智能体的高频数学翻车区（catastrophic cancellation、p 值误读、伪回归、Itô 二阶项）全部有护栏条目。

```
数学任务 → 信号识别 → 查种子库选工具（主推+备选）→ 读陷阱字段 → 库函数/模板代码落地 → 陷阱自检 → 误差棒交付 → 实测日志 → 种子库进化 → 下次更准
```

**激活词原理**：数学工具名是 LLM 预训练知识的标准锚点——"用 Welch's t 检验"比"做个更稳的检验"精准得多，"先查条件数"比"注意数值稳定性"可执行得多。本系统的职责：帮你选对工具名 + 把工具的已知陷阱翻译成可执行的规避动作。

## 文件清单

| 文件 | 作用 |
|------|------|
| [`AGENT-INJECTION.md`](AGENT-INJECTION.md) | ⭐ 通用注入提示词 + 部署说明（最小接入看这个） |
| [`MATH.md`](MATH.md) | 数学操作系统入口：数学观 5 条 + 决策流程 + 信号→工具索引 |
| [`references/math-seeds.md`](references/math-seeds.md) | L1 总库速查：全量工具单行表（157 个，按需查询勿全文注入） |
| [`references/scenarios/`](references/scenarios/) | L2a 问题场景档 ×12：每场景主推工具组详解 + 代码入口 + 翻车清单 |
| [`references/recipes/`](references/recipes/) | L2b 模板代码卡 ×12：可直接抄的 import 锚点 + 每工具代码块 + 陷阱规避写法 + 反模式 |
| [`references/domains/`](references/domains/) | L2c 域章档 ×4域27子类：157 条工具全量六字段（一句话/何时用/输入输出/陷阱/代码锚点/参考） |
| [`sources/`](sources/) | 源文档归档（docx 原始索引报告 + md 提取版） |
| [`templates/SKILL.md`](templates/SKILL.md) | Claude Code skill 文件（四层路由版，安装脚本直接拷贝用） |
| [`deploy/`](deploy/) | 各类智能体的详细部署文档 + 一键脚本（上面指令的权威细节都在这里） |

## 知识库分层架构（重 agent 按需加载，禁止全文注入）

```
L0  MATH.md                       决策层：信号识别 → 该查哪层
│
├─ L2a scenarios/（12 份）        知道问题信号时第一落点
│    每场景主推工具组 · 详解+代码入口 · 备选速览 · 翻车清单
│
├─ L2b recipes/（12 张）          写代码落地（抄可运行模板）
│    import 锚点 + 每工具模板代码块 + 陷阱规避写法 + 反模式
│
├─ L2c domains/（4域27子类文件）   深挖某工具/确认细节
│    157 条全量六字段 · 零删减 · 代码锚点直达库函数
│
└─ L1 math-seeds.md               全量单行速查总表（关键词全局搜）
```

## 手动部署（不想发指令、自己动手时）

| 你的 Agent | 方式 | 文档 |
|-----------|------|------|
| **Claude Code** | skill + CLAUDE.md 薄注入（一键脚本） | [`deploy/claude-code.md`](deploy/claude-code.md) |
| **OpenClaw** | workspace 放置 + SOUL/AGENTS 注入 | [`deploy/openclaw.md`](deploy/openclaw.md) |
| **Codex / pi / workbuddy / codebuddy / Trae / Qoder / hermas** 等 | 全局规则文件薄注入 | [`deploy/generic-agents.md`](deploy/generic-agents.md) |
| 通用 ChatBot（无文件机制） | 系统提示词整段注入 | [`deploy/generic-agents.md`](deploy/generic-agents.md) |

```bash
# Claude Code 最快路径
git clone <仓库地址> \
  && bash agent-math-seed-system/deploy/install-claude-skill.sh
```

## 使用原则

1. **种子库按需查询，不注入上下文**——动手时按信号/子类/关键词检索需要的工具卡即可，全文进上下文是浪费
2. **实测日志是系统的灵魂**——每次交付后把所用工具与成败记进种子库末尾，定期同步回本仓库，索引越用越准（后续可引入条目级"实测分"）
3. **本仓库是活文档**——新工具、新用法、新踩的坑，欢迎 PR 补录

## License

MIT
