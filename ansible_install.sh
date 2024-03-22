#!/bin/bash

# Update package lists
sudo apt update

# Install software-properties-common for add-apt-repository command
sudo apt install -y software-properties-common

# Add Ansible PPA repository and update
sudo add-apt-repository --yes --update ppa:ansible/ansible

# Install Ansible
sudo apt install -y ansible

