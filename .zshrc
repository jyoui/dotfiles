export ZSH=/home/david/.oh-my-zsh

ZSH_THEME="xiong-chiamiov-plus"

plugins=(git geeknote)

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:"

source $ZSH/oh-my-zsh.sh

export EDITOR='vim'

__git_files () {
    _wanted files expl 'local files' _files
}

export PATH=~/bin:$PATH
export PATH=~/local/bin:$PATH

export LUAPATH=~/david/skynet/3rd/lua

export EDITOR=vim

set -o vi

alias v=vim
alias du='du -h'
alias u='cd ..'
alias mk='make'
alias gs='git status'

alias ccat='pygmentize -g'

alias cw='cd ~/work/server'
alias dc='rlwrap nc localhost 5210'
alias lu='lua53 -ltest'
