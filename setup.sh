#!/bin/bash

# Initial update
sudo pacman -Syu

# Base system
sudo pacman -S --needed git patch nano htop powertop sysstat neofetch progress

# Build tools
sudo pacman -S --needed go base-devel hwloc openssl cmake

# Phosh GUI
sudo pacman -S --needed gparted xarchiver siglo gnome-calendar-mobile gnome-weather modem-manager-gui pavucontrol

# Expanded GUI tools
#sudo pacman -S --needed epdfview geany

# Network
#sudo pacman -S --needed net-tools nmap speedtest-cli nfs-utils tcpdump

# File Sytem tools
#sudo pacman -S --needed squashfs-tools f2fs-tools dosfstools mstools hdparm udisk2 nnn

# Web
#sudo pacman -S --needed firefox tor transmission-gtk 

# Media 
#sudo pacman -S --needed lame mpv

# Media expanded
#sudo pacman -S --needed gthumb vlc cmus audacity soundconverter pulseeffects ncmpcpp

# Other tools
#sudo pacman -S android-tools timeshift 

# Install Yay
#git clone https://aur.archlinux.org/yay.git
#sudo chown -R alarm:users ./yay
#cd yay
#makepkg -si

# AUR Update
#yay -Syu

# AUR utilities
yay -S --needed mmsd-tng-git axolotl auther-git cotp menulibre

# AUR Software
#yay -S --needed downgrade inxi tor-browser wireshark-git cli-visualizer spacefm

# Cleanup
sudo pacman -Rns gnome-software-mobile

# Add $USER to necessary groups
#sudo usermod -a -G video,lp,lpadmin $USER

# Enableme experimental MMS in Chatty
gsettings set sm.puri.Chatty experimental-features true

#Enable fstrim
#sudo systemctl enable fstrim.timer
#sudo systemctl start fstrim.timer
