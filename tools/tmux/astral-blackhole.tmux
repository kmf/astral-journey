# astral-blackhole — a lekker colorscheme for tmux
# https://github.com/kmf/astral-journey
#
# Install:
#   Add to ~/.tmux.conf:
#     source-file ~/.local/share/astral-journey/tools/tmux/astral-blackhole.tmux
#   Reload:  tmux source-file ~/.tmux.conf

# --- base ---
set -g status-style "bg=#14172a,fg=#ebe8d2"
set -g status-position bottom
set -g status-interval 5

# --- left: session name ---
set -g status-left-length 40
set -g status-left "#[bg=#ffcc66,fg=#0d0f1e,bold] ✦ #S #[bg=#14172a,fg=#ffcc66]#[bg=#14172a,fg=#8b90bd] "

# --- right: date + time + host ---
set -g status-right-length 80
set -g status-right "#[fg=#8b90bd]#[fg=#ebe8d2,bg=#1c2038] %Y-%m-%d #[fg=#ffcc66]· #[fg=#ebe8d2]%H:%M #[fg=#b78ae0,bg=#1c2038]#[fg=#0d0f1e,bg=#b78ae0,bold] #h "

# --- windows ---
set -g window-status-format "#[fg=#8b90bd,bg=#14172a] #I #W "
set -g window-status-current-format "#[fg=#14172a,bg=#ffcc66]#[fg=#0d0f1e,bg=#ffcc66,bold] #I #W #[fg=#ffcc66,bg=#14172a]"
set -g window-status-separator ""

# --- panes ---
set -g pane-border-style "fg=#2a2f4d"
set -g pane-active-border-style "fg=#ffcc66"
set -g display-panes-active-colour "#ffcc66"
set -g display-panes-colour "#8b90bd"

# --- messages / command prompt ---
set -g message-style "bg=#1c2038,fg=#ebe8d2"
set -g message-command-style "bg=#1c2038,fg=#ffcc66"

# --- copy mode ---
set -g mode-style "bg=#1c2038,fg=#ffcc66"

# --- clock ---
set -g clock-mode-colour "#ffcc66"

# --- activity / bell ---
set -g window-status-activity-style "fg=#ff9933,bg=#14172a"
set -g window-status-bell-style "fg=#ff6e6e,bg=#14172a,bold"
