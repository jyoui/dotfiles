# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="xiong-chiamiov-plus"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin

#begin of david's custom on Mac

#设置clojure script的环境变量
export CLOJURESCRIPT_HOME=/Users/david/github/clojurescript

source ~/.aliases.sh
source ~/.zsh_fix_dyld_warning.sh

set -o vi

# ghci 等程序会用到的环境变量
export EDITOR=vim

export PATH=~/Library/Haskell/bin:$PATH
export PATH=~/bin:$PATH

export PATH=$CLOJURESCRIPT_HOME/bin:$PATH

#export PROTOCOL_BUFFERS_PYTHON_IMPLEMENTATION=cpp

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# to fix some errors, such as ruby
# ls -d /usr/share/locale/*.UTF-8
export LC_ALL=C
export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8

# 游戏服务器从环境变量中读取配置
export POEM_SETTINGS=local_settings

# 云悦开发使用
PATH=~/poem/program/protocol:$PATH
#PATH=~/poem/program/cocos2dx/lua:$PATH


# 据说可以解决非常讨厌的zsh git命令补全太慢的问题
__git_files () { 
    _wanted files expl 'local files' _files     
}
