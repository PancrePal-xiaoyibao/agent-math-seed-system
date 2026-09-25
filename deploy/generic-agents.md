# 通用智能体部署 — Codex / pi / workbuddy / codebuddy / Trae / Qoder / hermas 等

> 判据只有一个：**你的 Agent 会不会在开工前自动读某个规则文件？**（AGENTS.md / rules / 系统提示词配置）

## 情形 A：有全局规则文件（Codex 的 `~/.codex/AGENTS.md`、Trae/Qoder 的 rules、hermas/workbuddy/codebuddy 的全局指令文件等）

1. 把 `MATH.md` 和 `references/math-seeds.md` 放到一个**固定绝对路径**（建议 `~/agent-math-seed-system/`，直接 clone 本仓库即可）：

```bash
git clone https://github.com/hhx465453939/agent-math-seed-system ~/agent-math-seed-system
```

2. 把下面薄注入片段贴进全局规则文件（注意把路径换成上一步的实际路径）：

```markdown
## 🧮 数学大脑（Math Seed System）

- **触发**：任何涉及数学与定量计算的任务（数值计算/统计检验/回归拟合/优化求解/微积分/线代/概率贝叶斯/时序预测/信号处理/信息论/图论离散/数论模运算/计算几何/蒙特卡洛/机器学习数学/符号推导/量化金融数学）——动手前先走数学决策流程。
- **流程**：问题信号识别（这个问题长什么样）→ 打开 `~/agent-math-seed-system/references/math-seeds.md` 按信号索引选工具，进 `domains/` 对应子类文件读条目陷阱与代码锚点 → 需要成段模板代码时查 `recipes/` 对应代码卡 → 陷阱自检 → 结论带误差棒 → 交付后记实测日志。
- **铁律**：库函数优先（成熟实现 > 手写）；浮点三禁（禁 == 比较浮点/禁 inv 解方程/禁不看条件数信答案）；统计三查（前提假设/多重比较校正/p 值解读）。
- **红线**：不跳过陷阱字段直接套公式；种子库按需查询、禁止全文注入上下文。
- 决策流程全文见 `~/agent-math-seed-system/MATH.md`；注入提示词全文见 `~/agent-math-seed-system/AGENT-INJECTION.md`。
```

## 情形 B：只有系统提示词 / 知识库（通用 ChatBot、自定义 Agent）

1. `MATH.md` + `math-seeds.md` 全文作为**知识库文档 / 附件**上传（四层全库能放目录就放整个 `references/`）
2. [`AGENT-INJECTION.md`](../AGENT-INJECTION.md) 的注入提示词整段放进**系统提示词**（或人格层）

> 上下文紧张的系统：只注入「注入提示词」部分（约 600 字），种子库留给检索（RAG / 文件读取）。

## 情形 C：有 skill / 工具机制的 Agent

参照 [`templates/SKILL.md`](../templates/SKILL.md) 的结构做一个触发器：数学类任务自动先读 `MATH.md`，再按需查种子库。
