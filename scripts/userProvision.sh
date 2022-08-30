#!/bin/bash

exec > /home/vagrant/userProvision.log 2>&1

cd /home/vagrant
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

source ~/.nvm/nvm.sh
nvm install 16