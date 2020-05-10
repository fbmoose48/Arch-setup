#!/bin/bash

# Initial Software
sudo pacman -Syu

sudo pacman -S --needed networkmanager dhclient openssh sshfs openvpn networkmanager-openvpn net-tools git nmap \ 
nano htop grub-customizer terminator neofetch reflector os-prober solaar android-tools \ 
base-devel hwloc openssl cmake libmicrohttpd numactl msr-tools \ 
tor jdk-openjdk transmission-gtk flashplugin chromium lame vlc soundconverter \ 
gparted gnome-tweaks gnome-tweak-tool dconf-editor xarchiver geany chrome-gnome-shell \ 
nextcloud-client -yy

# Fix DHCP on NetworkManager
sudo echo "[main]" >> /etc/NetworkManager/conf.d/dhcp-client.conf
sudo echo "dhcp=dhclient" >> /etc/NetworkManager/conf.d/dhcp-client.conf

# Other tools
sudo pacman -S audacity mpv cmus gthumb timeshift dosfstools mstools hdparm tcpdump \ 
virtualbox virtualbox-host-dkms virtualbox-guest-iso virtualbox-ext-pack -yy

# AMD video driver
sudo pacman -S xf86-video-amdgpu

# Install Yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# AUR Software
yay -Syu

yay -S --needed downgrade pamac-aur inxi tor-browser teamviewer wireshark-git cli-visualizer -yy

# Fix Gnome Minimize/Maximize buttons
gsettings set org.gnome.desktop.wm.preferences button-layout ':minimize,maximize,close'

#Enable fstrim
sudo systemctl enable fstrim.timer
sudo systemctl start fstrim.timer

