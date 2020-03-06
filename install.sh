#!/bin/bash

# Initial Software
sudo pacman -Syu

sudo pacman -S --needed networkmanager openssh sshfs openvpn networkmanager-openvpn net-tools git nmap \ 
nano htop grub-customizer terminator neofetch reflector os-prober solaar android-tools \ 
base-devel hwloc openssl cmake libmicrohttpd numactl msr-tools \ 
chromium-browser tor jdk-openjdk transmission flashplugin-installer lame vlc soundconverter \ 
gparted gnome-tweaks gnome-tweak-tool dconf-editor xarchiver geany chrome-gnome-shell \ 
virtualbox virtualbox-host-dkms nextcloud-client -yy

# Other tools
sudo pacman -S audacity mpv cmus gthumb timeshift virtualbox-guest-iso virtualbox-ext-pack tcpdump \ 
dosfstools mstools hdparm -yy #disk/fs tools

# Install Yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# AUR Software
yay -Syu

yay -S --needed downgrade pamac-aur inxi tor-browser teamviewer wireshark-git cli-visualizer -yy
