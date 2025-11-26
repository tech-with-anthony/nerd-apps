#!/usr/bin/env bash
#
# Author  : Anthony Woodward
# Date    : 17 November 2025
# Updated : 25 November 2025

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
    sudo apt install neofetch -y
#install flatpak tools
    sudo apt install flatpak -y
    sudo apt install gnome-software-plugin-flatpak -y
    flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
####Install Flatpak related apllications####
    #install evolution email client    
        flatpak install flathub org.gnome.Evolution -y
    #install obsidian notes app
        flatpak install flathub md.obsidian.Obsidian -y
####Install deb package applications####
    #install heroic games launcher
        wget https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher/releases/download/v2.18.1/Heroic-2.18.1-linux-amd64.deb
        sudo dpkg -i Heroic*amd64.deb
    #install google chrome
        wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
        sudo dpkg -i google-chrome-stable_current_amd64.deb
####Install snap package applications####
    #install steam
        sudo snap install steam
    #install Discord
        sudo snap install discord
    #install vs code
        sudo snap install code --classic
    #install teams-for-linux
        sudo snap install teams-for-linux
