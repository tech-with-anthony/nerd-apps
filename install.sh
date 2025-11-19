#!/usr/bin/env bash
#
# Author  : Anthony Woodward
# Date    : 17 November 2025
# Updated : 17 November 2025

#update repositories
    sudo apt update
#install base tools
    sudo apt install build-essential -y
    sudo apt install cmake -y
    sudo apt install curl -y
    sudo apt install git -y
    sudo apt install gpg -y
    sudo apt install imagemagick -y
    sudo apt install jq -y
    sudo apt install net-tools -y
    sudo apt install openssh-server -y
    sudo apt install screen -y
    sudo apt install socat -y
    sudo apt install steghide -y
    sudo apt install stow -y
    sudo apt install xsel -y
    sudo apt install tree -y
    sudo apt install snapd -y
#install steam
    sudo snap install steam -y
#install heroic games launcher
    wget https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher/releases/download/v2.18.1/Heroic-2.18.1-linux-amd64.deb
    sudo dpkg -i Heroic*amd64.deb
#install lutris
    echo -e "Types: deb\nURIs: https://download.opensuse.org/repositories/home:/strycore/Debian_12/\nSuites: ./\nComponents: \nSigned-By: /etc/apt/keyrings/lutris.gpg" | sudo tee /etc/apt/sources.list.d/lutris.sources > /dev/null
    wget -q -O- https://download.opensuse.org/repositories/home:/strycore/Debian_12/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/lutris.gpg
    sudo apt update
    sudo apt install lutris -y
#install Discord
    sudo snap install discord -y
#install google chrome
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo dpkg -i google-chrome-stable_current_amd64.deb
#install vs code
    sudo snap install code --classic -y
