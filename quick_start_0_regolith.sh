#bin/bash

wget -qO - https://regolith-desktop.org/regolith.key | \
gpg --dearmor | sudo tee /usr/share/keyrings/regolith-archive-keyring.gpg > /dev/null

echo deb "[arch=amd64 signed-by=/usr/share/keyrings/regolith-archive-keyring.gpg] \
https://regolith-desktop.org/release-3_1-ubuntu-jammy-amd64 jammy main" | \
sudo tee /etc/apt/sources.list.d/regolith.list

sudo apt update -y

sudo apt upgrade -y

sudo apt dist-upgrade -y

sudo apt install curl wget -y

sudo apt install regolith-desktop regolith-session-flashback regolith-look-nord -y

reboot


