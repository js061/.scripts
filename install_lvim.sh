#!/bin/zsh

bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)

echo "export PATH=\"\$PATH:\$HOME/.local/bin\"" >> $HOME/.zshrc
. $HOME/.zshrc

