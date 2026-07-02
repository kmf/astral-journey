# astral-blackhole — fzf colors
# https://github.com/kmf/astral-journey
#
# Install:
#   Add to ~/.zshrc or ~/.bashrc:
#     source ~/.local/share/astral-journey/tools/fzf/astral-blackhole.sh

export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
--color=fg:#ebe8d2,fg+:#fdfbe4,bg:#0d0f1e,bg+:#1c2038 \
--color=hl:#6a97ea,hl+:#99ccff,info:#767ba6,marker:#38a8d0 \
--color=prompt:#ffcc66,spinner:#b78ae0,pointer:#ffcc66,header:#b78ae0 \
--color=border:#2a2f4d,label:#ffcc66,query:#ebe8d2 \
--border=rounded --border-label=' astral ' --border-label-pos=2 \
--preview-window='border-rounded' \
--prompt=' ✦  ' --marker=' ✓ ' --pointer=' ❯ ' --separator='─'"
