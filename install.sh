#!/bin/bash

files="editrc gemrc gvimrc inputrc tmux.conf vim vimrc"

mkdir -p vim/bundle
mkdir -p ~/.dotfiles.old

for file in $files; do
  mv ~/.$file  ~/.dotfiles.old/
  ln -s ~/.dotfiles/$file ~/.$file
done

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
