# my zsh/bash alias on github

alias s=stat
alias c=clear
alias u='cd ..'
alias e='exit'
alias la='ls -a'
alias v='vim'
alias mk='make'
alias l='less'
alias g='grep'
alias st='stat'
alias du='du -h'

alias pd='pushd'
alias ppd='popd'

alias se='sudoedit'
# apt
alias ai='sudo apt-get install'
alias as='sudo apt-cache search'

# 常用的目录
alias ct='cd /tmp'

alias cgu='iconv -f GB18030 -t UTF-8'
#
alias va='vim ~/david/myvimrc/aliases.sh'
alias vr='vim ~/.vimrc'

# without -f gvim will have I/O error on my ubuntu 12.04 64
alias gvim='gvim -f'

#
alias rst2html='rst2html --no-generator'

# just for sl works, to show a cool stuff
unalias sl

alias vc='vim CMakeLists.txt'
