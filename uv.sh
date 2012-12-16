#!/bin/zsh

current_git_dir=`pwd`

# echo $current_git_dir/_vimrc
# vim使用一个软链接

cp ~/.gitconfig $current_git_dir/_gitconfig

git add _vimrc
git add _gitconfig
