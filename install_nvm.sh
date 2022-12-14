#!/bin/zsh
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash
source $HOME/.zshrc
# Install latest node
. $HOME/.zshrc
nvm install --lts
