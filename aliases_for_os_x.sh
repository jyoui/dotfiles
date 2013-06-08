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
alias l='less'
alias g='grep'
alias st='stat'
alias so='source'
alias du='du -h'

alias pd='pushd'
alias ppd='popd'

alias sudoedit='sudo -e'

# 常用的目录
alias ct='cd /tmp'
alias cdl='cd ~/david/log'

# 常修改编辑的文件
alias va='vim ~/david/myvimrc/aliases_for_os_x.sh'
alias vr='vim ~/.vimrc'

#常用的工具，命令
alias cgu='iconv -f GB18030 -t UTF-8'
alias rst2html='rst2html --no-generator'
alias vc='vim CMakeLists.txt'
alias sshl='ssh -p 1025 localhost'
alias sshm='ssh david@davidlove.me'
alias scpl='scp -P 1025'

#云悦开发
alias cw='cd ~/poem/engine/'
alias py=python
alias bpy=bpython
alias pym='python -m'
alias spye='source ~/work/NENV/bin/activate'
alias spyw='source ~/work/PYWEB/bin/activate'
alias ms='mysql -uroot -plove'
alias cdp='cd ~/david/lovely_codes/python'
alias luac='/Users/david/poem/program/cocos2dx/lua/luac.mac'

#启动登陆会话服务器和游戏服务器,以及机器人性能测试
alias ss='python -m session.main'
alias sw='python -m world.main'
alias sb='python -m test.bench'
alias sr='python -m iRobot.iLogin'
