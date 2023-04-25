#!/bin/bash -
## Ansible-run script

# install ansible
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt update -y
sudo apt-get install -y curl git software-properties-common ansible

# pull ansible
sudo ansible-pull -U https://github.com/ThePrimeagen/ansible.git
