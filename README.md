# Dotfiles

My dotfiles, feel free to fork it and customize it to your own needs.

## Pre-requisites

You will need `ack` for a better experience.

## Install

    cd ~
    git clone git://github.com/janogonzalez/dotfiles.git ~/.dotfiles
    ln -s ~/.dotfiles/vimrc ~/.vimrc
    ln -s ~/.dotfiles/gvimrc ~/.gvimrc
    ln -s ~/.dotfiles/vim ~/.vim
    cd ~/.dotfiles
    git submodule update --init

## Credits

Inspired by [Vim: Revisited](http://mislav.uniqpath.com/2011/12/vim-revisited/) and a
[Vimcast](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/).
