#!/bin/bash

# Let's not pollute the user's environment with this script's directory
setup_symlink() {
    local source_path="$1"
    local target_path="$2"
    
    # Check if target already exists
    if [ -e "$target_path" ] || [ -L "$target_path" ]; then
        echo "Warning: $target_path already exists."
        read -p "Do you want to remove $target_path and create a new symlink? (y/n): " choice
        if [[ "$choice" == "y" || "$choice" == "Y" ]]; then
            rm -rf "$target_path"
            echo "Removed existing $target_path"
        else
            echo "Skipping $target_path setup"
            return 1
        fi
    fi
    
    # Create the symlink
    ln -s "$source_path" "$target_path"
    echo "Created symlink: $target_path -> $source_path"
}

setup_symlink "$(pwd)/.bash_profile" ~/.bash_profile
setup_symlink "$(pwd)/.bashrc" ~/.bashrc
setup_symlink "$(pwd)/.gitconfig" ~/.gitconfig
setup_symlink "$(pwd)/.gitignore" ~/.gitignore
setup_symlink "$(pwd)/.tmux.conf" ~/.tmux.conf
setup_symlink "$(pwd)/.vimrc" ~/.vimrc
setup_symlink "$(pwd)/nvim" ~/.config/nvim
setup_symlink "$(pwd)/inputrc" ~/.inputrc