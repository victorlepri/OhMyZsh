# ===============================
# Zsh Configuration File
# ===============================

# Enable Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Oh My Zsh & Powerlevel10k setup
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Powerlevel10k theme
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# History Configuration
setopt SHARE_HISTORY
export HISTSIZE=10000
export SAVEHIST=10000
export HISTFILE=~/.zsh_history

# Locale and Language
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# Default Editor
export EDITOR="nvim"

# PATH Configuration
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.npm-global/bin:$PATH"
export PATH="$HOME/.slack/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Bun shell completions
[ -s "$BUN_INSTALL/_bun" ] && source "$BUN_INSTALL/_bun"

# NVM configuration
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"

# FZF configuration
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Customize FZF appearance and preview (uses bat)
if command -v bat > /dev/null; then
  export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border --preview "bat --style=numbers --color=always {} | head -500"'
else
  export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
fi

# Enable vi keybindings
bindkey -v

# Aliases

# Git commands
alias ga="git add"
alias gc="git commit"
alias gp="git push"
alias gpl="git pull"
alias gs="git status"
alias gd="git diff"

# Common directories
alias code="cd ~/Documents/code"

# Editor shortcuts
alias configzsh="nvim ~/.zshrc"
alias confignvim="cd ~/.config/nvim && nvim"
alias configstarship="nvim ~/.config/starship.toml"

# Dotfiles tracked
alias dotfiles='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# System info (neofetch) alias
alias sysinfo="neofetch"

