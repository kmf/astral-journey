# astral-supernova — a lekker colorscheme for tmux
# https://github.com/kmf/astral-journey

set -g status-style "bg=#f6f0dc,fg=#292140"
set -g status-position bottom
set -g status-interval 5

set -g status-left-length 40
set -g status-left "#[bg=#c9820f,fg=#fdf9ec,bold] ✦ #S #[bg=#f6f0dc,fg=#c9820f]#[bg=#f6f0dc,fg=#6b6a8a] "

set -g status-right-length 80
set -g status-right "#[fg=#6b6a8a]#[fg=#292140,bg=#efe8cf] %Y-%m-%d #[fg=#c9820f]· #[fg=#292140]%H:%M #[fg=#7b4fc0,bg=#efe8cf]#[fg=#fdf9ec,bg=#7b4fc0,bold] #h "

set -g window-status-format "#[fg=#6b6a8a,bg=#f6f0dc] #I #W "
set -g window-status-current-format "#[fg=#f6f0dc,bg=#c9820f]#[fg=#fdf9ec,bg=#c9820f,bold] #I #W #[fg=#c9820f,bg=#f6f0dc]"
set -g window-status-separator ""

set -g pane-border-style "fg=#e2d8ba"
set -g pane-active-border-style "fg=#c9820f"
set -g display-panes-active-colour "#c9820f"
set -g display-panes-colour "#6b6a8a"

set -g message-style "bg=#efe8cf,fg=#292140"
set -g message-command-style "bg=#efe8cf,fg=#c9820f"

set -g mode-style "bg=#efe8cf,fg=#c9820f"

set -g clock-mode-colour "#c9820f"

set -g window-status-activity-style "fg=#d9660a,bg=#f6f0dc"
set -g window-status-bell-style "fg=#d83a4a,bg=#f6f0dc,bold"
