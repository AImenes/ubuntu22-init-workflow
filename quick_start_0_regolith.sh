#bin/bash

wget -qO - https://regolith-desktop.org/regolith.key | \
gpg --dearmor | sudo tee /usr/share/keyrings/regolith-archive-keyring.gpg > /dev/null

echo deb "[arch=amd64 signed-by=/usr/share/keyrings/regolith-archive-keyring.gpg] \
https://regolith-desktop.org/release-3_1-ubuntu-jammy-amd64 jammy main" | \
sudo tee /etc/apt/sources.list.d/regolith.list

sudo apt update

sudo apt upgrade

sudo apt dist-upgrade

sudo apt install regolith-desktop regolith-session-flashback regolith-look-nord

reboot

sudo apt install zsh
