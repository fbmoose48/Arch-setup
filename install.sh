#!/bin/bash

# Initial Software
sudo pacman -Syu

sudo pacman -S --needed base-devel hwloc openssl cmake libmicrohttpd net-tools htop git nmap neofetch os-prober\
networkmanager openssh-server sshfs openvpn openvpn-networkmanager openjdk-11-jre nano grub-customizer \
terminator transmission reflector flashplugin-installer lame audacity mpv vlc gthumb soundconverter solaar \
gparted gnome-tweaks gnome-tweak-tool dconf-editor xarchiver geany numactl msr-tools timeshift \
virtualbox virtualbox-host-dkms virtualbox-guest-iso virtualbox-ext-pack android-tools \
chrome-gnome-shell chromium-browser tor nextcloud-desktop -yy

# Install Yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# AUR Software
yay -Syu

yay -S --needed downgrade pamac-aur inxi tor-browser teamviewer wireshark-git -yy
