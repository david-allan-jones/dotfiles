#!/bin/bash

# Bash
ln -s $(pwd)/.bash_profile ~/.bash_profile
ln -s $(pwd)/.bashrc ~/.bashrc

# Git
ln -s $(pwd)/.gitconfig ~/.gitconfig
ln -s $(pwd)/.gitignore ~/.gitignore

# Tmux
ln -s $(pwd)/.tmux.conf ~/.tmux.conf

# Vim
ln -s $(pwd)/.vimrc ~/.vimrc

# Neovim
ln -s $(pwd)/nvim ~/.config/nvim

# GNU Readline
ln -s $(pwd)/inputrc /etc/inputrc