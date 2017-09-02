# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="xiong-chiamiov-plus"
plugins=(git brew cabal sublime)

source $ZSH/oh-my-zsh.sh

export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8

#alias zsh_history=perl -lne 'm#: (\d+):\d+;(.+)# && printf "%s :: %s\n",scalar localtime $1,$2' $HISTFILE

# Customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:$PATH

#begin of david's custom on Mac

source ~/david/myvimrc/aliases_for_os_x.sh

set -o vi
# ghci 等程序会用到的环境变量
export EDITOR=vim
export PATH=~/bin:$PATH
export PATH=~/.cabal/bin:$PATH

__git_files () {
    _wanted files expl 'local files' _files
}
export NODE_PATH="/usr/local/lib/node_modules"

# oracle java 1.8
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

export PATH=~/Library/Python/2.7/bin:$PATH
export PATH=~/.gem/ruby/2.0.0/bin:$PATH

#export PATH=~/.neovim/bin:$PATH
#export PATH=~/openresty/bin:~/openresty/nginx/sbin:$PATH
#export PATH=/opt/bochs/bin:$PATH

# uncomment when needed
#export BXSHARE="/opt/bochs/share/bochs"

# env LUA_PATH : package.path, LUA_CPATH
export LUAPATH=~/david/gl/lua/src
export LUADIR=~/david/gl/lua/src

export VIS_PATH=~/david/vis

# 使用通过brew安装的gnu 版core utils
#export PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH

export HOMEBREW_NO_AUTO_UPDATE=TRUE
