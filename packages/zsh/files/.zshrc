HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v

# add personal function path
fpath=($HOME/.zsh $fpath)

zstyle :compinstall filename '$HOME/.zshrc'

autoload -Uz compinit promptinit
compinit
promptinit

prompt brng cvs signal

# ls colors
alias ls='ls --color=auto'
if (( $+commands[dircolors] )) && [ -f $HOME/.dircolors ]; then
    eval $(dircolors $HOME/.dircolors)
fi

# Syntax highlighting
if [ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
    source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
elif [ -f $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
    source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# total time
function ttime() {
    s="$(date)"
    time $@
    e="$(date)"
    echo "$s -> $e"
}


# aliases and default applications
# kudos to https://www.topbug.net/blog/2016/10/11/speed-test-check-the-existence-of-a-command-in-bash-and-zsh/ for pointing out experimentally determining what's faster
# for fast command existence detection in zsh

# open as xdg-open
if (( $+commands[xdg-open] )); then
    alias open=xdg-open
fi

# if nvim available, alias vim to it
if (( $+commands[nvim] )); then
    export EDITOR=nvim
elif (( $+commands[vim] )); then
    export EDITOR=vim
fi

# e as default editor
alias e=$EDITOR

# local, non-version controlled configuration
source "$HOME/.local.zshrc"
