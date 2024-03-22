#bin/bash

sudo apt install zsh -y

touch ~/.zshrc

sudo chsh -s $(which zsh)

reboot

