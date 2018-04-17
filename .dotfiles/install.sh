#!/bin/bash

if [[ -z ${USER} ]]; then
	USER="$(whoami)"
fi

sudo apt install -y wget curl
sudo apt install -y vim-gnome git zsh terminator keychain
sudo apt install -y i3-wm i3status slock dmenu terminator fonts-dejavu
sudo apt install -y openjdk-8-jdk build-essential
sudo apt install -y nmap htop jq

mkdir -p ~/dev ~/tarballs ~/apps

# Docker
# https://docs.docker.com/install/linux/docker-ce/ubuntu/#install-docker-ce
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt install -y docker-ce
sudo gpasswd -a $USER docker

#TODO: Golang
#TODO: Atom
#TODO: VScode
#TODO: IntelliJ

# Python
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev
curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash

# Node.js
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash

# Ruby
curl -sSL https://get.rvm.io | bash -s stable

# Rust
curl -sSf https://static.rust-lang.org/rustup.sh | sh

# SDKman
curl -s "https://get.sdkman.io" | bash 

# Fonts
mkdir -p ~/.local/share/fonts
for type in Bold Light Medium Regular Retina; do
    wget -O ~/.local/share/fonts/FiraCode-${type}.ttf \
    "https://github.com/tonsky/FiraCode/blob/master/distr/ttf/FiraCode-${type}.ttf?raw=true";
done
fc-cache -f
