#!/bin/bash

# Bash
# Ask to setup bash. Prompt the user
echo "Setting up bash environment..."

ln -s $(pwd)/bash/.bash_profile ~/.bash_profile
ln -s $(pwd)/bash/.bashrc ~/.bashrc
