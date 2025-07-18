#!/bin/bash

# Bash
ln -s $(pwd)/bash/.bash_profile ~/.bash_profile
ln -s $(pwd)/bash/.bashrc ~/.bashrc

# Git
ln -s $(pwd)/git/.gitconfig ~/.gitconfig
ln -s $(pwd)/git/.gitignore ~/.gitignore

# Vim
ln -s $(pwd)/vim/.vimrc ~/.vimrc

# Tmux
ln -s $(pwd)/tmux/.tmux.conf ~/.tmux.conf
ln -s $(pwd)/tmux/.tmux.keybinds ~/.tmux.keybinds
ln -s $(pwd)/tmux/.tmux.display ~/.tmux.display
ln -s $(pwd)/tmux/.tmux.options ~/.tmux.options