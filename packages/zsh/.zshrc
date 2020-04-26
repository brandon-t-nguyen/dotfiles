HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v

zstyle :compinstall filename '$HOME/.zshrc'

autoload -Uz compinit promptinit
compinit
promptinit

prompt elite2 cyan

# ls colors
alias ls='ls --color=auto'
eval $(dircolors $HOME/.dircolors)

# Paths
#export PATH="/path/to/thing:$PATH"

# Syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Local configuration
