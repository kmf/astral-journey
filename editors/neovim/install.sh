#!/usr/bin/env bash
#
# Install the astral.nvim colorscheme for LazyVim (or any Neovim setup).
#
# By default this SYMLINKS the theme from this repo into your Neovim config
# directory, so edits here show up in nvim without reinstalling. Pass --copy
# for a standalone copy instead.
#
# Usage:
#   ./install.sh                    # symlink theme + write LazyVim activation spec
#   ./install.sh --copy             # copy files instead of symlinking
#   ./install.sh --variant supernova # activate astral-supernova instead of astral-blackhole
#   ./install.sh --no-activate      # install the theme only, don't touch plugins/
#   ./install.sh --help

set -euo pipefail

# Directory this script lives in (the repo's editors/neovim).
SRC="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Neovim config dir, honoring XDG.
NVIM_CONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/nvim"

MODE="link"       # link | copy
ACTIVATE=1        # write the LazyVim plugin spec
VARIANT="blackhole"

die() { printf 'error: %s\n' "$1" >&2; exit 1; }

while [ $# -gt 0 ]; do
  case "$1" in
    --copy)        MODE="copy" ;;
    --link)        MODE="link" ;;
    --no-activate) ACTIVATE=0 ;;
    --variant)     shift; VARIANT="${1:-}" ;;
    --variant=*)   VARIANT="${1#*=}" ;;
    -h|--help)
      sed -n '3,14p' "${BASH_SOURCE[0]}" | sed 's/^# \{0,1\}//'
      exit 0 ;;
    *) die "unknown argument: $1" ;;
  esac
  shift
done

case "$VARIANT" in
  blackhole|supernova) THEME="astral-$VARIANT" ;;
  astral-blackhole|astral-supernova) THEME="$VARIANT" ;;
  *) die "variant must be 'blackhole' or 'supernova' (got '$VARIANT')" ;;
esac

[ -f "$SRC/lua/astral/init.lua" ] || die "can't find lua/astral/init.lua next to this script"
[ -d "$NVIM_CONFIG" ] || die "Neovim config dir not found: $NVIM_CONFIG"

install_path() {
  # install_path <source> <destination>
  local src="$1" dest="$2"
  mkdir -p "$(dirname "$dest")"
  rm -rf "$dest"
  if [ "$MODE" = "link" ]; then
    ln -s "$src" "$dest"
    printf '  linked  %s -> %s\n' "$dest" "$src"
  else
    cp -R "$src" "$dest"
    printf '  copied  %s\n' "$dest"
  fi
}

printf 'Installing astral.nvim (%s) into %s\n' "$MODE" "$NVIM_CONFIG"

# Core module + colorscheme loaders onto the runtimepath.
install_path "$SRC/lua/astral"                  "$NVIM_CONFIG/lua/astral"
install_path "$SRC/colors/astral-blackhole.lua" "$NVIM_CONFIG/colors/astral-blackhole.lua"
install_path "$SRC/colors/astral-supernova.lua" "$NVIM_CONFIG/colors/astral-supernova.lua"

if [ "$ACTIVATE" -eq 1 ]; then
  SPEC="$NVIM_CONFIG/lua/plugins/colorscheme.lua"
  mkdir -p "$(dirname "$SPEC")"
  cat > "$SPEC" <<EOF
return {
  -- astral colorscheme is installed on the runtimepath at
  -- ~/.config/nvim/colors and ~/.config/nvim/lua/astral, so no plugin
  -- download is needed. Managed by editors/neovim/install.sh.
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "$THEME", -- or "$([ "$THEME" = astral-blackhole ] && echo astral-supernova || echo astral-blackhole)"
    },
  },
}
EOF
  printf '  wrote   %s (colorscheme = %s)\n' "$SPEC" "$THEME"
fi

printf 'Done. Start nvim, or run :colorscheme %s\n' "$THEME"
