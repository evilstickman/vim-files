#!/bin/bash

FOLDER=~/vim-files

# dotfiles
cd      "$FOLDER"
ln -sf  "$FOLDER"/vimrc         ~/.vimrc
ln -sf  "$FOLDER"/bashrc        ~/.bashrc
ln -sf  "$FOLDER"/bash_profile  ~/.bash_profile
ln -sf  "$FOLDER"/vim           ~/.vim
ln -sf  "$FOLDER"/tmuxconf      ~/.tmux.conf
ln -sf  "$FOLDER"/gemrc         ~/.gemrc
ln -sf  "$FOLDER"/irbrc         ~/.irbrc
# ln -sf  "$FOLDER"/gitconfig     ~/.gitconfig
echo    "Setup symlinks"

# reload tmux config
tmux source-file ~/.tmux.conf
echo "Reload tmux config"

# vim
mkdir -p ~/.vimbackup
mkdir -p ~/.vimtmp
echo "Setup vim temp"
