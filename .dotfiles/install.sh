#!/bin/bash

if [[ -z ${USER} ]]; then
	USER="$(whoami)"
fi

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

