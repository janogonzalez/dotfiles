#!/bin/bash

files="gemrc gvimrc inputrc tmux.conf vim vimrc zshrc"

mkdir -p ~/.dotfiles.old

for file in $files; do
  mv ~/.$file  ~/.dotfiles.old/
  ln -s ~/.dotfiles/$file ~/.$file
done
