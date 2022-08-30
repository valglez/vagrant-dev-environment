# vagrant-dev-environment

A simple Vagrant development environment for Node.js 

## Requirements
- Vagrant
- Virtualbox

## Architecture
You will create an Ubuntu gnome box with the following tools:

- Visual Studio Code
- Git
- Docker
- Node.js

## Quick Start
Clone the repository:

    $ git clone https://github.com/valglez/vagrant-dev-environment.git

Adapt [Vagrantfile](https://github.com/valglez/vagrant-dev-environment/blob/main/Vagrantfile#L7) with your network adapter name:
```
# ubuntu.vm.network "public_network", ip: "192.168.1.100", bridge: "YOUR NETWORK ADAPTER NAME HERE"
```

Change to the directory you cloned into and run the following command to start the virtual machine:

    $ vagrant up --provision

To enter the virtual machine via SSH protocol run the following command, although if you want to have a graphical experience go directly to VirtualBox Manage to get started:

    $ vagrant ssh ubuntu

To exit the virtual machine and delete it use the following commands:

    vagrant@dev-environment:$ logout
    $ vagrant destroy