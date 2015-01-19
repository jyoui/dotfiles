# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

ZSH_THEME="xiong-chiamiov-plus"

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
plugins=(git, svn, brew, cabal, sublime)

source $ZSH/oh-my-zsh.sh

export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8

#alias zsh_history=perl -lne 'm#: (\d+):\d+;(.+)# && printf "%s :: %s\n",scalar localtime $1,$2' $HISTFILE

# Customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin

#begin of david's custom on Mac

source ~/.aliases.sh

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

# oracle java 1.7
export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)

# 需要使用ghc的 -fllvm时启用
#export PATH=/opt/llvm/bin:$PATH

# cocos2dx android develop
export ANDROID_SDK_ROOT="/Users/david/software/android-sdk-macosx/"
export NDK_ROOT="/Users/david/software/android-ndk-r9d/"
export COCOS_CONSOLE_ROOT=/Users/david/ShortTail/dagger/external/cocos2d-js/tools/cocos2d-console/bin
export PATH=$COCOS_CONSOLE_ROOT:$PATH
export ANT_ROOT=/usr/local/bin # for cocos console

export PATH=~/software/android-ndk-r9d:$PATH
export PATH=~/software/android-sdk-macosx/tools:$PATH
export PATH=~/software/android-sdk-macosx/platform-tools:$PATH

