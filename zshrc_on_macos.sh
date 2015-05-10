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
export PATH=~/Library/Haskell/bin:$PATH
export PATH=/usr/local/openresty/nginx/sbin:$PATH

__git_files () {
    _wanted files expl 'local files' _files
}
export NODE_PATH="/usr/local/lib/node_modules"

# oracle java 1.8
#export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

# 需要使用ghc的 -fllvm时启用
#export PATH=/opt/llvm/bin:$PATH

export PATH=~/.gem/ruby/2.0.0/bin:$PATH
export PATH=~/.neovim/bin:$PATH

# Add GHC 7.8.4 to the PATH, via http://ghcformacosx.github.io/
export GHC_DOT_APP="/Applications/ghc-7.8.4.app"
if [ -d "$GHC_DOT_APP" ]; then
    export PATH="${HOME}/.cabal/bin:${GHC_DOT_APP}/Contents/bin:${PATH}"
fi

# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT=/Users/david/work/cocos/quick-3.5/tools/cocos2d-console/bin
export PATH=$COCOS_CONSOLE_ROOT:$PATH

# Add environment variable QUICK_V3_ROOT for cocos2d-x
export QUICK_V3_ROOT=/Users/david/work/cocos/quick-3.5
export PATH=$QUICK_V3_ROOT:$PATH

# Add environment variable COCOS_TEMPLATES_ROOT for cocos2d-x
export COCOS_TEMPLATES_ROOT=/Users/david/work/cocos/quick-3.5/templates
export PATH=$COCOS_TEMPLATES_ROOT:$PATH
