#!/usr/bin/env bash
# install-claude-skill.sh — 把 math 数学大脑装进本机 Claude Code（~/.claude/skills/math/）
# 用法：bash deploy/install-claude-skill.sh   （在本仓库任意位置可执行，自动定位仓库根）
set -euo pipefail

SRC="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DST="${HOME}/.claude/skills/math"

[[ -f "$SRC/templates/SKILL.md" ]] || { echo "❌ 找不到 $SRC/templates/SKILL.md，请在仓库内运行"; exit 1; }
[[ -f "$SRC/references/math-seeds.md" ]] || { echo "❌ 找不到 $SRC/references/math-seeds.md"; exit 1; }

mkdir -p "$DST"

# 重装保护：旧种子库含实测日志，先备份
if [[ -f "$DST/references/math-seeds.md" ]]; then
  BAK="$DST/references/math-seeds.md.bak-$(date +%Y%m%d-%H%M%S)"
  cp "$DST/references/math-seeds.md" "$BAK"
  echo "📦 已备份旧种子库（含实测日志）→ $BAK"
fi

cp "$SRC/templates/SKILL.md" "$DST/SKILL.md"
# references/ 整目录覆盖拷贝（math-seeds 总库 + scenarios/ + recipes/ + domains/ 四层全量）
mkdir -p "$DST/references"
rm -rf "$DST/references/scenarios" "$DST/references/recipes" "$DST/references/domains"
cp -R "$SRC/references/." "$DST/references/"

echo "✅ math 数学大脑已安装 → $DST"
echo "   ├─ SKILL.md                  （数学 OS + 四层查询路由）"
echo "   └─ references/"
echo "      ├─ math-seeds.md          （L1 总库速查，157 工具）"
echo "      ├─ scenarios/             （L2a 12 份问题场景档）"
echo "      ├─ recipes/               （L2b 12 张模板代码卡：可抄代码块+陷阱规避）"
echo "      └─ domains/               （L2c 4 域 27 子类全量条目档）"
echo "👉 下一步：把 deploy/claude-code.md 里的「薄注入片段」贴进 ~/.claude/CLAUDE.md，新会话生效。"
