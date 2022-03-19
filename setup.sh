#!/bin/bash

# Initial update
sudo pacman -Syu

# Base system
sudo pacman -S --needed git minicom mmsd-tng usbutils patch nano htop powertop sysstat neofetch progress danctnix-tweaks-app-pinephone danctnix-tweaks-app-phosh android-tools

# Build tools
sudo pacman -S --needed go base-devel hwloc openssl cmake

# Phosh GUI
sudo pacman -S --needed gparted xarchiver siglo gnome-calendar-mobile gnome-weather gnome-screenshot modem-manager-gui pavucontrol gnome-firmware

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
git clone https://aur.archlinux.org/yay.git
sudo chown -R alarm:users ./yay
cd yay
makepkg -si

# AUR Update
#yay -Syu

# AUR utilities
yay -S --needed axolotl menulibre downgrade atinout

# AUR Software
#yay -S --needed auther-git cotp clapper inxi tor-browser wireshark-git cli-visualizer spacefm

# Cleanup
sudo pacman -Rns gnome-software-mobile

# Add $USER to necessary groups
#sudo usermod -a -G video,lp,lpadmin $USER

# Spelling
sudo pacman -S --needed aspell aspell-en
# go into gedit and select preferences >> spelling >> preferences >> highlight misspelled words

# Disable animations in Phosh
gsettings set org.gnome.desktop.interface enable-animations false

# Set "adaptive apps only" to "off"
gsettings set sm.puri.phosh app-filter-mode '[]'
# TUrn them back on
#gsettings set sm.puri.phosh app-filter-mode '["adaptive"]'

# Enableme experimental MMS in Chatty
gsettings set sm.puri.Chatty experimental-features true

#Enable fstrim
#sudo systemctl enable fstrim.timer
#sudo systemctl start fstrim.timer
