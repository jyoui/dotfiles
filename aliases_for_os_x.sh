# my zsh/bash alias on github
# os x系统版本

# mac os x命令行修正
alias ls='ls -wG'
alias less='less -rf'

#alias rm='rm -i'

alias s=stat
alias c=clear
alias u='cd ..'
alias e='exit'
alias la='ls -a'
alias v='vim'
alias vi='vim'
alias mk='make'
alias l='ls'
alias g='grep'
alias st='stat'
alias so='source'
alias du='du -h'

alias pd='pushd'
alias ppd='popd'

alias sudoedit='sudo -e'

# 常用的目录
alias ct='cd /tmp'
alias cdl='cd ~/david/log/diary-2014'
alias cw='cd ~/work'
alias cws='cd ~/work/server/World/src'
alias cwc='cd ~/work/client'
alias cwp='cd ~/work/proto'
alias cww='cd ~/work/wiki'

# 常修改编辑的文件
alias va='vim ~/david/myvimrc/aliases_for_os_x.sh'
alias vr='vim ~/.vimrc'

#常用的工具，命令
alias cgu='iconv -f GB18030 -t UTF-8'
alias sshw='ssh david@223.4.32.165'

alias py=python
alias bpy=bpython
alias pym='python -m'
alias hp='hprotoc -d ../server/World/src '
