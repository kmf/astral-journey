# astral-journey for tmux

## Install

```bash
# Cloneastralsomewhere accessible
git clone https://github.com/kmf/astral-journey ~/.local/share/astral-journey

# Add to ~/.tmux.conf
echo 'source-file ~/.local/share/astral-journey/tools/tmux/astral-blackhole.tmux' >> ~/.tmux.conf

# Reload
tmux source-file ~/.tmux.conf
```

## Switch variant on the fly

Bind a key to toggle:

```tmux
bind-key T if -F '#{==:#{@astral-variant},latte}' \
  'source-file ~/.local/share/astral-journey/tools/tmux/astral-blackhole.tmux ; set -g @astral-variant espresso ; display "blackhole"' \
  'source-file ~/.local/share/astral-journey/tools/tmux/astral-supernova.tmux    ; set -g @astral-variant latte    ; display "supernova"'
```

## What it styles

- Status bar background, active/inactive windows, pane borders
- Session name with a astral spark on the left
- Hostname with a violet tag on the right
- Message bar, command prompt, copy-mode selections
- Activity markers (orange) and bell (red, bold) — impossible to miss

The active window gets a solid astral-amber block; inactive windows are muted. Pane borders highlight active in yellow.
