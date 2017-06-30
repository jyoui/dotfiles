# my zsh/bash alias on github
# os x系统版本

# mac os x命令行修正
alias ls='ls -wG'
alias less='less -rf'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias s=stat
alias c=clear
alias u='cd ..'
alias e='exit'
alias la='ls -a'
alias v='vim'
alias nv='nvim'
alias vv='view'
alias vi='vim'
alias mk='make'
alias l='ls'
alias g='git'
alias ga='git add'
alias gs='git status'
alias so='source'
alias du='du -h'

alias pd='pushd'
alias ppd='popd'

alias sudoedit='sudo -e'

# 常用的目录
alias ct='cd /tmp'
alias cl='cd ~/david/log'
alias cn='cd ~/david/notes'
alias cw='cd ~/work'

# 常修改编辑的文件
alias va='vim ~/david/dotfiles/aliases_for_os_x.sh'
alias vr='vim ~/.vimrc'

alias py=python
alias bpy=bpython
alias pym='python -m'


alias ghcllvm='PATH=/usr/local/opt/llvm/bin:$PATH ghc -fllvm'

alias ccat='pygmentize -g'
alias typora="open -a typora"

alias ldd='otool -L'
