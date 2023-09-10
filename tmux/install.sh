#!/bin/bash
sudo apt install tmux

ln -s $(pwd)/tmux/.tmux.conf ~/.tmux.conf
ln -s $(pwd)/tmux/.tmux.keybinds ~/.tmux.keybinds
ln -s $(pwd)/tmux/.tmux.display ~/.tmux.display
ln -s $(pwd)/tmux/.tmux.options ~/.tmux.options
