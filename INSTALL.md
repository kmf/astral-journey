# Install

Clone the repo, then cherry-pick the configs you need.

```bash
git clone https://github.com/kmf/astral-journey ~/.local/share/astral-journey
```

Replace `astral-blackhole` (dark) with `astral-supernova` (light) anywhere below for the light variant.

---

## Terminals

### Ghostty

```bash
mkdir -p ~/.config/ghostty/themes
cp terminals/ghostty/astral-blackhole ~/.config/ghostty/themes/
cp terminals/ghostty/astral-supernova ~/.config/ghostty/themes/
```

In `~/.config/ghostty/config`:

```
theme = astral-blackhole
```

Or auto-switch with system preference:

```
theme = light:astral-supernova,dark:astral-blackhole
```

### Alacritty

```bash
mkdir -p ~/.config/alacritty/themes
cp terminals/alacritty/astral-blackhole.toml ~/.config/alacritty/themes/
cp terminals/alacritty/astral-supernova.toml ~/.config/alacritty/themes/
```

In `~/.config/alacritty/alacritty.toml`:

```toml
import = ["~/.config/alacritty/themes/astral-blackhole.toml"]
```

### Kitty

```bash
mkdir -p ~/.config/kitty/themes
cp terminals/kitty/astral-blackhole.conf ~/.config/kitty/themes/
cp terminals/kitty/astral-supernova.conf ~/.config/kitty/themes/
```

In `~/.config/kitty/kitty.conf`:

```
include ./themes/astral-blackhole.conf
```

### WezTerm

```bash
mkdir -p ~/.config/wezterm/colors
cp terminals/wezterm/astral-blackhole.lua ~/.config/wezterm/colors/
cp terminals/wezterm/astral-supernova.lua ~/.config/wezterm/colors/
```

In `~/.config/wezterm/wezterm.lua`:

```lua
config.colors = require 'colors/astral-blackhole'
```

### foot

```bash
mkdir -p ~/.config/foot
cp terminals/foot/astral-blackhole.ini ~/.config/foot/
```

In `~/.config/foot/foot.ini`:

```ini
include=~/.config/foot/astral-blackhole.ini
```

### iTerm2

Double-click `terminals/iterm2/astral-blackhole.itermcolors` to import, then pick it under
**Settings → Profiles → Colors → Color Presets**.

### Windows Terminal

Copy the `scheme` object from `terminals/windows-terminal/astral-blackhole.json` into the
`schemes` array of your `settings.json`, then set `"colorScheme": "astral-blackhole"` on a profile.

---

## Editors

### VS Code

Copy the `editors/vscode/` folder into `~/.vscode/extensions/astral-journey/`, reload, then pick
**Astral Blackhole** or **Astral Supernova** from the theme picker.

### Zed

```bash
cp editors/zed/astral-journey.json ~/.config/zed/themes/
```

Select the theme under **Settings → Theme**.

### Neovim

```bash
cp -r editors/neovim/colors ~/.config/nvim/
cp -r editors/neovim/lua/astral ~/.config/nvim/lua/
```

```lua
vim.cmd.colorscheme("astral-blackhole")
```

### Emacs

```bash
cp editors/emacs/astral-*-theme.el ~/.emacs.d/themes/
```

```elisp
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'astral-blackhole t)
```

### IntelliJ / JetBrains

**Settings → Editor → Color Scheme → gear icon → Import Scheme**, then choose
`editors/intellij/astral-blackhole.icls`.

### fresh

```bash
mkdir -p ~/.config/fresh/themes
cp editors/fresh/astral-blackhole.json ~/.config/fresh/themes/
cp editors/fresh/astral-supernova.json ~/.config/fresh/themes/
```

Select `astral-blackhole` or `astral-supernova` by name in fresh's settings.

---

## Tools

- **bat** — `cp tools/bat/astral-blackhole.tmTheme "$(bat --config-dir)/themes/"` then `bat cache --build`; set `--theme=astral-blackhole`.
- **btop** — `cp tools/btop/astral-blackhole.theme ~/.config/btop/themes/`; set `color_theme = "astral-blackhole"`.
- **fzf** — `source tools/fzf/astral-blackhole.sh` from your shell rc.
- **k9s** — `cp tools/k9s/astral-blackhole.yaml ~/.config/k9s/skins/`; reference it in your k9s config.
- **lazygit** — merge `tools/lazygit/astral-blackhole.yml` into your lazygit `config.yml`.
- **starship** — merge `tools/starship/astral-blackhole.toml` into `~/.config/starship.toml`.
- **tmux** — `run-shell` the `tools/tmux/astral-blackhole.tmux` file from `~/.tmux.conf`.
- **yazi** — `cp tools/yazi/astral-blackhole.toml ~/.config/yazi/theme.toml`.

---

## Apps & Desktop

- **claude-code** — merge `apps/claude-code/settings.json`; optional statusline via `apps/claude-code/astral-statusline.sh`.
- **obsidian** — copy `apps/obsidian/` into `.obsidian/themes/Astral Journey/`.
- **opencode** — reference `apps/opencode/astral.json` in your opencode config.
- **chrome / firefox** — load the unpacked `apps/{chrome,firefox}/astral-blackhole/` as a browser theme.
- **COSMIC** — see `desktop/cosmic/README.md`.
- **DMS** — see `desktop/dms/README.md`.

See each directory's `README.md` for tool-specific detail.
