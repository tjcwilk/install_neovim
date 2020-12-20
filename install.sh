#!/bin/bash

sudo apt-get update -y
sudo apt-get install -y neovim

# install vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
	       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

mkdir -p ~/.config/nvim
ln -sf "$(pwd)/init.vim" ~/.config/nvim/init.vim

# Now open nvim, and run :PlugInstall
