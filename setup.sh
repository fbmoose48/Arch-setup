#!/bin/bash

# Initial update
sudo pacman -Syu

# Base system
sudo pacman -S --needed git patch nano htop powertop sysstat neofetch gnome-keyring reflector os-prober nnn s-tui progress udisks2

# Base WM
sudo pacman -S --needed nitrogen gtk-chtheme picom lxterminal lxappearance stalonetray xorg-xrandr xorg-xsetroot libxft imlib2 gparted terminator xarchiver grub-customizer
yay -S spacefm

# Expanded GUI tools
#sudo pacman -S --needed pasystray blueman solaar epdfview geany

# Network
sudo pacman -S --needed networkmanager network-manager-applet dhclient openssh sshfs openvpn networkmanager-openvpn net-tools nmap speedtest-cli nfs-utils

# Build tools
sudo pacman -S --needed base-devel hwloc openssl cmake libmicrohttpd numactl msr-tools geany

# Coreboot
#sudo pacman -S --needed python gcc-ada flex bison ncurses wget zlib acpica

# Gnome tools
#sudo pacman -S --needed gnome-tweaks gnome-tweak-tool dconf-editor chrome-gnome-shell

# Web
sudo pacman -S --needed firefox tor jdk-openjdk transmission-gtk 

# Web expanded
#sudo pacman -S --needed thunderbird flashplugin chromium nextcloud-client firejail

# Media 
sudo pacman -S --needed lame mpv pavucontrol

# Media expanded
#sudo pacman -S --needed gthumb vlc cmus audacity soundconverter pulseeffects ncmpcpp

# Fonts
sudo pacman -S --needed ttf-hack ttf-joypixels ttf-bitstream-vera ttf-dejavu powerline-fonts

# ETH
#yay -S --needed ethminer opencl-amd

# Laptop
#sudo pacman -S --needed tlp

# Virtualization
#sudo pacman -S --needed virtualbox virtualbox-host-modules-arch virtualbox-guest-iso virtualbox-guest-utils
#sudo modprobe vboxdrv

# Other tools
#sudo pacman -S android-tools mpv cmus timeshift dosfstools mstools hdparm tcpdump

# Fix DHCP on NetworkManager
sudo echo "[main]" >> /etc/NetworkManager/conf.d/dhcp-client.conf
sudo echo "dhcp=dhclient" >> /etc/NetworkManager/conf.d/dhcp-client.conf

# AMD video driver
#sudo pacman -S --needed xf86-video-amdgpu mesa-demos

#Intel vidoe driver
#sudo pacman -S --needed xf86-video-intel

# Install Yay
#git clone https://aur.archlinux.org/yay.git
#cd yay
#makepkg -si

# AUR Update
#yay -Syu

# AUR utilities
yay -S --needed spacefm imagewriter

# AUR Software
#yay -S --needed downgrade inxi tor-browser teamviewer wireshark-git cli-visualizer 

#AUR AMDGPU-PRO OpenCL drivers
#yay -S --needed opencl-amd-polaris

# AUR Fonts
yay -S --needed nerd-fonts-source-code-pro nerd-fonts-liberation-mono lexend-fonts-git libxft-bgra-git ttf-fixedsys-excelsior-linux nerd-fonts-profont-windows

# AUR laptop
#yay -S --needed thinkfan

# Add $USER to necessary groups
sudo usermod -a -G video,lp,lpadmin $USER

# Disable GDM Auto-Suspend (Gnome) When no User is logged in
#sudo -u gdm dbus-launch gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type 'nothing'

# Fix Gnome Minimize/Maximize buttons
#gsettings set org.gnome.desktop.wm.preferences button-layout ':minimize,maximize,close'

#Enable fstrim
sudo systemctl enable fstrim.timer
sudo systemctl start fstrim.timer

# Poly Dark GRUB theme
wget -O - https://github.com/shvchk/poly-dark/raw/master/install.sh | bash 
