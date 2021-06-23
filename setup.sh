#!/bin/bash

# Initial update
sudo pacman -Syu

# Base system
sudo pacman -S --needed git patch nano htop powertop sysstat neofetch nnn progress udisks2

# Base WM
#sudo pacman -S --needed nitrogen gtk-chtheme picom lxterminal lxappearance gparted xarchiver 

# Expanded GUI tools
#sudo pacman -S --needed pasystray blueman solaar epdfview geany

# Network
sudo pacman -S --needed openssh sshfs openvpn networkmanager-openvpn net-tools nmap speedtest-cli nfs-utils tcpdump

# Build tools
sudo pacman -S --needed base-devel hwloc openssl cmake libmicrohttpd 

# File Sytem tools
#sudo pacman -S --needed squashfs-tools f2fs-tools dosfstools mstools hdparm

# Web
#sudo pacman -S --needed firefox tor jdk-openjdk transmission-gtk 

# Web expanded
#sudo pacman -S --needed thunderbird flashplugin chromium nextcloud-client firejail

# Media 
#sudo pacman -S --needed lame mpv pavucontrol

# Media expanded
#sudo pacman -S --needed gthumb vlc cmus audacity soundconverter pulseeffects ncmpcpp

# Other tools
#sudo pacman -S android-tools mpv cmus timeshift 

# Install Yay
#git clone https://aur.archlinux.org/yay.git
#cd yay
#makepkg -si

# AUR Update
#yay -Syu

# AUR utilities
yay -S --needed spacefm

# AUR Software
#yay -S --needed downgrade inxi tor-browser teamviewer wireshark-git cli-visualizer 

# Add $USER to necessary groups
#sudo usermod -a -G video,lp,lpadmin $USER

#Enable fstrim
#sudo systemctl enable fstrim.timer
#sudo systemctl start fstrim.timer
