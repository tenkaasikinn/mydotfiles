# ===== Basic zsh setup =====

# Fastfetch

if [[ -o interactive ]] && [[ -z "$SSH_CONNECTION" ]]; then
	fastfetch
fi

# History
HISTSIZE=10000
SAVEHIST=10000
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS

# Completion
autoload -Uz compinit
compinit

# Better completion menu
zstyle ':completion:*' menu select

# ===== Autosuggestions (fish-like) =====
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# ===== Syntax highlighting =====
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ===== Oh My Posh =====
eval "$(oh-my-posh init zsh --config ~/jandedobbeleer.omp.json)"
