# astral-supernova — a lekker colorscheme for tmux
# https://github.com/kmf/astral-journey

set -g status-style "bg=#f6f0dc,fg=#292140"
set -g status-position bottom
set -g status-interval 5

set -g status-left-length 40
set -g status-left "#[bg=#9d650c,fg=#fdf9ec,bold] ✦ #S #[bg=#f6f0dc,fg=#9d650c]#[bg=#f6f0dc,fg=#5d5c78] "

set -g status-right-length 80
set -g status-right "#[fg=#5d5c78]#[fg=#292140,bg=#efe8cf] %Y-%m-%d #[fg=#9d650c]· #[fg=#292140]%H:%M #[fg=#7b4fc0,bg=#efe8cf]#[fg=#fdf9ec,bg=#7b4fc0,bold] #h "

set -g window-status-format "#[fg=#5d5c78,bg=#f6f0dc] #I #W "
set -g window-status-current-format "#[fg=#f6f0dc,bg=#9d650c]#[fg=#fdf9ec,bg=#9d650c,bold] #I #W #[fg=#9d650c,bg=#f6f0dc]"
set -g window-status-separator ""

set -g pane-border-style "fg=#e2d8ba"
set -g pane-active-border-style "fg=#9d650c"
set -g display-panes-active-colour "#9d650c"
set -g display-panes-colour "#5d5c78"

set -g message-style "bg=#efe8cf,fg=#292140"
set -g message-command-style "bg=#efe8cf,fg=#9d650c"

set -g mode-style "bg=#efe8cf,fg=#9d650c"

set -g clock-mode-colour "#9d650c"

set -g window-status-activity-style "fg=#b65608,bg=#f6f0dc"
set -g window-status-bell-style "fg=#d62e3f,bg=#f6f0dc,bold"
