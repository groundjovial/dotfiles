#!/bin/bash

# Vars
dir=~/dotfiles
olddir=~/dotfiles_old
files="vimrc tmux.conf"

mkdir -p $olddir
cd $dir

for file in $files; do
    mv ~/.$file ~/dotfiles_old/
    ln -s $dir/$file ~/.$file
done

