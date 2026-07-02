# astral-journey for bat

Themes for [bat](https://github.com/sharkdp/bat) — a cat(1) clone with syntax highlighting. Also works with **delta** (git pager) since delta reuses bat's theme engine.

## Install

```bash
# Copy themes into bat's config dir
mkdir -p "$(bat --config-dir)/themes"
cp astral-blackhole.tmTheme "$(bat --config-dir)/themes/"
cp astral-supernova.tmTheme    "$(bat --config-dir)/themes/"

# Rebuild bat's theme cache (important!)
bat cache --build
```

## Activate

In `~/.config/bat/config`:

```
--theme="astral-blackhole"
```

Or one-off:

```bash
bat --theme="astral-blackhole" file.py
```

## Use with delta

```gitconfig
# ~/.gitconfig
[delta]
    syntax-theme = astral-blackhole
```

## Auto-switch by system appearance

```bash
# In ~/.zshrc or ~/.bashrc
if [[ "$(defaults read -g AppleInterfaceStyle 2>/dev/null)" == "Dark" ]]; then
  export BAT_THEME="astral-blackhole"
else
  export BAT_THEME="astral-supernova"
fi
```

(Linux GNOME equivalent: `gsettings get org.gnome.desktop.interface color-scheme`.)
