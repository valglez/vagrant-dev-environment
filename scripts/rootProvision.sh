#!/bin/bash

exec > /home/vagrant/rootProvision.log 2>&1

apt remove docker docker-engine docker.io containerd runc 2> /dev/null

sudo mkdir -p /etc/apt/keyrings

echo \
"deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

apt update -y

apt install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release \
    git \
    wget

wget -q -S -O https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

sudo chmod a+r /etc/apt/keyrings/docker.gpg

apt install -y docker.io

snap install code --classic