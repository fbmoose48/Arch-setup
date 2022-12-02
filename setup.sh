#!/bin/bash

# Initial update
sudo pacman -Syu

# Base system
sudo pacman -S --needed git patch gnome-keyring reflector os-prober openssh sshfs nfs-utils 

# Base CLI tools
sudo pacman -S --needed nano htop powertop sysstat neofetch w3m s-tui progress udisks2 detox lm_sensors tmux

# Base WM
sudo pacman -S --needed nitrogen gtk-chtheme picom lxterminal lxappearance stalonetray xorg-xrandr xorg-xsetroot libxft imlib2 gparted terminator xarchiver grub-customizer

# Expanded GUI tools
#sudo pacman -S --needed pasystray blueman epdfview geany gnome-multi-writer

# Network
sudo pacman -S --needed networkmanager network-manager-applet dhclient openvpn networkmanager-openvpn net-tools nmap speedtest-cli tcpdump

# Build tools
sudo pacman -S --needed base-devel hwloc openssl cmake libmicrohttpd numactl msr-tools geany

# File Sytem tools
#sudo pacman -S --needed squashfs-tools f2fs-tools dosfstools mstools hdparm nnn

# Coreboot
#sudo pacman -S --needed python gcc-ada flex bison ncurses wget zlib acpica

# Gnome tools
#sudo pacman -S --needed gnome-tweaks gnome-tweak-tool dconf-editor chrome-gnome-shell

# Web
#sudo pacman -S --needed firefox tor jdk-openjdk transmission-gtk 

# Web expanded
#sudo pacman -S --needed thunderbird flashplugin chromium nextcloud-client firejail transmission-remote-gtk

# Media 
#sudo pacman -S --needed lame mpv pavucontrol gthumb

# Media expanded
#sudo pacman -S --needed vlc cmus soundconverter pulseeffects ncmpcpp

# Audio
#sudo pacman -S --needed audacity ardour lmms rosegarden

# Fonts
sudo pacman -S --needed ttf-hack ttf-joypixels ttf-bitstream-vera ttf-dejavu powerline-fonts

# ETH
#yay -S --needed ethminer opencl-amd

# Games
#sudo pacman -S --needed wit
#yay -S --needed wiibafu customizemii

# Laptop
#sudo pacman -S --needed tlp

# Virtualization
#KVM/QEMU
#sudo pacman -S --needed libvirt qemu virt-manager dnsmasq
#sudo usermod -a -G libvirt,kvm $USER
#VirtualBox
#sudo pacman -S --needed virtualbox virtualbox-host-modules-arch virtualbox-guest-iso virtualbox-guest-utils
#sudo modprobe vboxdrv

# Other tools
#sudo pacman -S --needed android-tools

# Backup
#sudo pacman -S --needed timeshift

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
yay -S --needed spacefm downgrade

# AUR Software
#yay -S --needed inxi tor-browser teamviewer wireshark-git cli-visualizer imagewriter usbimager

#AUR AMDGPU-PRO OpenCL drivers
#yay -S --needed opencl-amd-polaris

# AUR Fonts
yay -S --needed nerd-fonts-source-code-pro libxft-bgra-git
#yay -S --needed nerd-fonts-liberation-mono lexend-fonts-git ttf-fixedsys-excelsior-linux nerd-fonts-profont-windows

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

# nanorc
curl https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh | sh -l
