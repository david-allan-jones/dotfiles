# Install NeoVim

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
sudo chmod u+x nvim.appimage
sudo mv nvim.appimage /usr/local/bin/nvim
sudo rm nvim.appimage

# Install libfuse2 (needed to open the app image)

sudo apt install libfuse2

# Copy config

chmod -R 755 $(pwd)/nvim/nvim
sudo rm -rf ~/.config/nvim
sudo ln -s $(pwd)/nvim/nvim ~/.config/nvim
chmod -R 755 ~/.config/nvim
