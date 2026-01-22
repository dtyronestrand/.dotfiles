# Path to oh-my-zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Set theme
ZSH_THEME="robbyrussell"

# Plugins
plugins=(git)

# Load oh-my-zsh if installed
if [ -f "$ZSH/oh-my-zsh.sh" ]; then
  source $ZSH/oh-my-zsh.sh
fi

# User configuration
export EDITOR='vim'

# Aliases
alias ll='ls -lah'
alias gs='git status'
alias gp='git pull'
alias gc='git commit'
alias gco='git checkout'
