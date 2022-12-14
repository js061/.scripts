#!/bin/zsh

cd $HOME
wget https://github.com/neovim/neovim/releases/download/v0.8.0/nvim-linux64.tar.gz
tar xzvf nvim-linux64.tar.gz
echo "export PATH=\"\$PATH:$HOME/nvim-linux64/bin\"" >> $HOME/.zshrc
rm nvim-linux64.tar.gz

# Use . for zsh
. ~/.zshrc
