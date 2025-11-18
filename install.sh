#!/usr/bin/env bash
#
# Author  : Anthony Woodward
# Date    : 17 November 2025
# Updated : 17 November 2025

#update repositories
    sudo apt update
#install base tools
    sudo apt install \
    build-essential \
    cmake \
    curl \
    git \
    gpg \
    imagemagick \
    jq \
    net-tools \
    openssh-server \
    screen \
    socat \
    steghide \
    stow \
    xsel \
    tree \
    -y
#install steam
    sudo snap install steam -y
#install heroic games launcher
    wget https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher/releases/download/v2.18.1/Heroic-2.18.1-linux-amd64.deb
    sudo dpkg -i Heroic*amd64.deb -y
#install lutris
    echo -e "Types: deb\nURIs: https://download.opensuse.org/repositories/home:/strycore/Debian_12/\nSuites: ./\nComponents: \nSigned-By: /etc/apt/keyrings/lutris.gpg" | sudo tee /etc/apt/sources.list.d/lutris.sources > /dev/null
    wget -q -O- https://download.opensuse.org/repositories/home:/strycore/Debian_12/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/lutris.gpg
    sudo apt update
    sudo apt install lutris -y
#install Discord
    sudo snap install discord -y
#install google chrome
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo dpkg -i google-chrome-stable_current_amd64.deb -y