#!/bin/bash

sudo apt-get update -y
sudo apt-get install -y neovim

mkdir -p ~/.config/nvim
ln -sf "$(pwd)/init.vim" ~/.config/nvim/init.vim
