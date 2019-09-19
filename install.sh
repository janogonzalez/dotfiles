#!/bin/bash

home_files="editrc gemrc gvimrc inputrc tmux.conf"

mkdir -p vim/bundle
mkdir -p ~/.dotfiles.old
mkdir -p ~/.config/nvim

for file in $home_files; do
  mv ~/.$file  ~/.dotfiles.old/
  ln -s ~/.dotfiles/$file ~/.$file
done

ln -s ~/.dotfiles/init.vim ~/.config/nvim/init.vim

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
