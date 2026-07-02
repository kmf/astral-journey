#!/usr/bin/env bash
# astral statusline for Claude Code
# https://github.com/kmf/astral-journey
#
# Reads the Claude Code session JSON from stdin and prints a single-line
# statusline using astral-blackhole colors via ANSI truecolor escape sequences.
#
# Install:
#   cp astral-statusline.sh ~/.claude/astral-statusline.sh
#   chmod +x ~/.claude/astral-statusline.sh
#
# Then reference it from ~/.claude/settings.json under "statusLine.command".

set -euo pipefail

# astral-blackhole palette (switch block below for astral-supernova)
VARIANT="${ASTRAL_VARIANT:-blackhole}"

if [[ "$VARIANT" == "supernova" ]]; then
  FG_MUTED="107;106;138"   # #6b6a8a
  YELLOW="176;125;0"        # #b07d00
  ORANGE="217;102;10"       # #d9660a
  RED="216;58;74"           # #d83a4a
  BLUE="47;95;199"          # #2f5fc7
  TEAL="0;102;153"          # #006699
  GREEN="31;138;92"         # #1f8a5c
  VIOLET="123;79;192"       # #7b4fc0
else
  FG_MUTED="118;123;166"    # #767ba6
  YELLOW="255;255;153"      # #ffff99
  ORANGE="255;153;51"       # #ff9933
  RED="255;110;110"         # #ff6e6e
  BLUE="106;151;234"        # #6a97ea
  TEAL="56;168;208"         # #38a8d0
  GREEN="126;212;163"       # #7ed4a3
  VIOLET="183;138;224"      # #b78ae0
fi

# ANSI truecolor: \e[38;2;R;G;Bm ... \e[0m
c()   { printf '\e[38;2;%sm' "$1"; }
rst() { printf '\e[0m'; }

# Read Claude Code session JSON from stdin
JSON="$(cat)"

# Extract fields with jq if available; fall back to defaults otherwise
if command -v jq >/dev/null 2>&1; then
  model=$(printf '%s' "$JSON"    | jq -r '.model.display_name // "claude"')
  dir=$(printf '%s' "$JSON"      | jq -r '.workspace.current_dir // "~"')
  ctx_pct=$(printf '%s' "$JSON"  | jq -r '.context.usage_percent // 0')
  cost=$(printf '%s' "$JSON"     | jq -r '.cost.total_usd // 0')
else
  model="claude"; dir="~"; ctx_pct=0; cost=0
fi

# Trim home path
dir="${dir/$HOME/~}"

# Build a gauge bar for context usage
gauge() {
  local pct=$1
  local filled=$((pct / 10))
  local empty=$((10 - filled))
  local bar=""
  for ((i=0; i<filled; i++)); do bar+="▰"; done
  for ((i=0; i<empty;  i++)); do bar+="▱"; done
  printf '%s' "$bar"
}

# Color the gauge based on usage
if   (( $(echo "$ctx_pct > 80" | bc -l 2>/dev/null || echo 0) )); then CTX_COLOR="$RED"
elif (( $(echo "$ctx_pct > 50" | bc -l 2>/dev/null || echo 0) )); then CTX_COLOR="$YELLOW"
else                                                                   CTX_COLOR="$GREEN"
fi

# Render the statusline
printf '%s✦%s  %s%s%s  ' "$(c "$YELLOW")" "$(rst)" "$(c "$BLUE")" "$model" "$(rst)"
printf '%s%s%s  ' "$(c "$VIOLET")" "$dir" "$(rst)"
printf '%s%s %d%%%s  ' "$(c "$CTX_COLOR")" "$(gauge "$ctx_pct")" "$ctx_pct" "$(rst)"
printf '%s$%.2f%s' "$(c "$FG_MUTED")" "$cost" "$(rst)"
