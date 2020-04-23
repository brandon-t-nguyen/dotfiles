# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/brandon/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload -U promptinit
promptinit
prompt elite2 cyan

alias ls='ls --color=auto'

# Paths
#export PATH="/path/to/thing:$PATH"
export PATH="$HOME/scripts:$PATH"
export PATH="$HOME/github/scripts:$PATH"

# Syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Local configuration
