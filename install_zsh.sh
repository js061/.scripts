#!/bin/bash
sudo apt-get update

sudo apt install -y zsh
chsh -s $(which zsh)
exec $(which zsh)
