#!/bin/bash

# Initial update
sudo pacman -Syu

# Base system
sudo pacman -S --needed gparted git nano htop powertop grub-customizer terminator neofetch reflector os-prober solaar xarchiver -y

# Network
sudo pacman -S --needed networkmanager dhclient openssh sshfs openvpn networkmanager-openvpn net-tools nmap -y

# Build tools
sudo pacman -S --needed base-devel hwloc openssl cmake libmicrohttpd numactl msr-tools geany -y

# Gnome tools
sudo pacman -S --needed gnome-tweaks gnome-tweak-tool dconf-editor chrome-gnome-shell  -y

# Web
sudo pacman -S --needed tor jdk-openjdk transmission-gtk flashplugin chromium nextcloud-client -y

# Media 
sudo pacman --needed lame gthumb vlc cmus audacity soundconverter  -y

# Virtualization
#sudo pacman -S --needed virtualbox virtualbox-host-dkms virtualbox-guest-iso virtualbox-ext-pack -y

# Other tools
#sudo pacman -S android-tools mpv cmus timeshift dosfstools mstools hdparm tcpdump -y

# Fix DHCP on NetworkManager
#sudo echo "[main]" >> /etc/NetworkManager/conf.d/dhcp-client.conf
#sudo echo "dhcp=dhclient" >> /etc/NetworkManager/conf.d/dhcp-client.conf

# AMD video driver
#sudo pacman -S xf86-video-amdgpu

# Install Yay
#git clone https://aur.archlinux.org/yay.git
#cd yay
#makepkg -si

# AUR Software
yay -Syu

yay -S --needed downgrade pamac-aur inxi tor-browser teamviewer wireshark-git cli-visualizer imagewriter -yy

# Disable GDM Auto-Suspend (Gnome) When no User is logged in
sudo -u gdm dbus-launch gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type 'nothing'

# Fix Gnome Minimize/Maximize buttons
gsettings set org.gnome.desktop.wm.preferences button-layout ':minimize,maximize,close'

#Enable fstrim
sudo systemctl enable fstrim.timer
sudo systemctl start fstrim.timer

# Poly Dark GRUB theme
wget -O - https://github.com/shvchk/poly-dark/raw/master/install.sh | bash 
