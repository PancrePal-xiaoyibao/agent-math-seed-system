# OpenClaw 部署 — 数学大脑

> OpenClaw 有 workspace（人格 + 规则文件），与美学大脑同构的部署形态。数学大脑与人格无关、纯能力增强，适合所有在册龙虾项目（工作助手/心理支持均可装，不涉及人格语义）。

## 步骤

1. **放文件**（容器内可读路径，按你的挂载结构调整）。以下命令**在本仓库根目录执行**：

```bash
cd /path/to/agent-math-seed-system   # 仓库根（clone 出来的目录）
mkdir -p <workspace根>/math
cp MATH.md <workspace根>/MATH.md
# 旧部署且 math/math-seeds.md 末尾已有实测日志时，先备份再覆盖：
cp <workspace根>/math/math-seeds.md <workspace根>/math/math-seeds.md.bak-$(date +%Y%m%d-%H%M%S) 2>/dev/null || true
cp -R references/. <workspace根>/math/
```

装完的 workspace 结构（四层全库）：

```
<workspace根>/MATH.md             数学 OS（决策层）
<workspace根>/math/math-seeds.md  L1 总库速查（末尾记实测日志）
<workspace根>/math/scenarios/     L2a 问题场景档 ×12
<workspace根>/math/recipes/       L2b 模板代码卡 ×12
<workspace根>/math/domains/       L2c 域章档 ×4域27子类
```

> 旧版只装了 `MATH.md` + `math/math-seeds.md` 的 workspace：重跑上面命令即可补齐四层；实测日志有备份，不会丢。

2. **注入提示词**：把 [`AGENT-INJECTION.md`](../AGENT-INJECTION.md) 里的注入提示词整段并入 workspace 的 `AGENTS.md` 或 `SOUL.md`（人格层规则）。

3. **重启/热载** workspace，验证：对龙虾说「帮我算一下这批数据的置信区间」或「这段数值代码为什么结果不稳」，看它是否先报问题信号与工具选择再动手。

## 注意

- 多龙虾舰队（多项目）时，每个 workspace 独立放一份；数学库与人格无关，可全舰队统一装备，但**各 workspace 的实测日志各自独立记录**，不跨项目串写。
- 龙虾产出的实测日志记在各自 workspace 的 `math/math-seeds.md` 末尾；定期把好用法同步回本仓库。
