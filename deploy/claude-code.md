# Claude Code 部署 — 数学大脑

> 方案：**薄全局注入（CLAUDE.md）+ 数学 skill 调用 + 厚实种子库 reference（四层：总库/场景档/代码卡/域章档）**。
> 日常会话只背 ~10 行薄注入；种子库躺在 skill 目录里按需查，不占上下文。

## 方式 A：一键脚本（推荐）

```bash
git clone <仓库地址>
bash agent-math-seed-system/deploy/install-claude-skill.sh
```

脚本做的事：建 `~/.claude/skills/math/` → 拷入 `SKILL.md`（来自 `templates/SKILL.md`）→ `references/` 整目录覆盖拷贝（math-seeds 总库 + scenarios/ + recipes/ + domains/ 四层全量，重装前预清理三个子目录）。已装过会先备份旧种子库（含实测日志）再覆盖。

## 方式 B：手动（在本仓库根目录执行）

```bash
mkdir -p ~/.claude/skills/math/references
cp templates/SKILL.md ~/.claude/skills/math/SKILL.md
cp -R references/. ~/.claude/skills/math/references/   # 整目录覆盖拷贝，四层全量
```

## 第二步：薄注入片段（必做，复制整段贴进 `~/.claude/CLAUDE.md` 末尾）

```markdown
## 🧮 数学大脑（Math Seed System）

本机 Claude Code 已装备数学大脑：四域 157 个数学工具索引（27 子类全量条目）+ 12 份问题场景档 + 12 张模板代码卡（`~/.claude/skills/math/`）。

- **触发**：任何涉及数学与定量计算的任务（数值计算/统计检验/回归拟合/优化求解/微积分/线代/概率贝叶斯/时序预测/信号处理/信息论/图论离散/数论模运算/计算几何/蒙特卡洛/机器学习数学/符号推导/量化金融数学）——先调用 `math` skill 再动手。
- **流程**：问题信号识别（这个问题长什么样）→ 按四层路由查工具库（scenarios/ 场景档 → domains/ 读条目陷阱 → recipes/ 抄模板代码）→ 陷阱自检（一句话说出最可能的坑与规避）→ 结论带误差棒 → 交付后记实测日志。
- **铁律**：库函数优先（numpy/scipy/statsmodels/sympy 成熟实现 > 手写）；浮点三禁（禁 == 比较/禁 inv 解方程/禁不看条件数信答案）；统计三查（前提假设/多重比较/p 值解读）。
- **红线**：不跳过陷阱字段直接套公式；不报误差的数值结论不可信；种子库按需查询、禁止全文注入上下文。
```

> 已有全局规则的项目（CLAUDE.md 内容很多）也只加这 ~10 行——种子库永远不进 CLAUDE.md。

## 第三步：验证

新开一个 Claude Code 会话，说「帮我检验这组 A/B 测试结果是否显著」或「这个线性方程组数值解总不对，帮我看看」。合格表现：

1. 它先**识别问题信号**（如"两组均值的统计推断"），再动手
2. 它引用了工具的**陷阱字段**（如 Welch 检验而非裸 t 检验、先查条件数）
3. 数值结论带**不确定度**（p 值/置信区间/标准误）
4. `~/.claude/skills/math/references/math-seeds.md` 末尾出现新的实测日志条目

## 实测日志的回流

日志记在安装副本（`~/.claude/skills/math/references/math-seeds.md` 末尾）。本仓库是上游：验证过的好用法，定期把日志新条目同步回本仓库 `references/math-seeds.md`（重装脚本覆盖前也会自动备份旧日志）。重装后想找回旧日志看 `references/math-seeds.md.bak-*`。
