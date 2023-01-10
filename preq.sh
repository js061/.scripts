#!/bin/bash
THIS_SCRIPT_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo "$THIS_SCRIPT_PATH"

sudo apt-get update

sudo apt-get install -y git fakeroot build-essential ncurses-dev xz-utils bc flex libelf-dev bison
sudo apt-get install -y libssl-dev

sudo apt-get install -y vmtouch

sudo apt install -y curl wget git

sudo apt install -y python3
sudo apt install -y python3-pip
sudo apt install -y cargo

sudo apt-get install -y cscope

sudo apt-get install -y cmake
