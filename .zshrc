export ZSH=/home/david/.oh-my-zsh

ZSH_THEME="xiong-chiamiov-plus"

plugins=(git geeknote yum)

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin"

source $ZSH/oh-my-zsh.sh

export EDITOR=vim


# a temp bugfix for oh my zsh
__git_files () {
    _wanted files expl 'local files' _files
}

#disable brew right now
#export PATH=~/.linuxbrew/sbin:$PATH
#export PATH=~/.linuxbrew/bin:$PATH

export PATH=~/bin:$PATH
export PATH=~/local/bin:$PATH
export PATH=~/bin/node-v4.5.0-linux-x64/bin:$PATH

# my own build script depend on this env
export LUAPATH=~/david/skynet/3rd/lua

set -o vi

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias v=vim
alias du='du -h'
alias u='cd ..'
alias mk='make'
alias gs='git status'

alias ccat='pygmentize -g'

alias dc='rlwrap nc localhost 5210'
alias cw='cd ~/work/fish/fs-server/fish-src/web'
