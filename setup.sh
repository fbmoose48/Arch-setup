#!/bin/bash

# Initial update
sudo pacman -Syu

# Base system
sudo pacman -S --needed gparted git patch nano htop powertop grub-customizer terminator neofetch reflector os-prober solaar xarchiver nnn powerline-fonts -y

# Base WM
sudo pacman -S --needed nitrogen gtk-chtheme picom stalonetray xorg-xrandr xorg-xsetroot pasystray blueman -y

# Network
sudo pacman -S --needed networkmanager dhclient openssh sshfs openvpn networkmanager-openvpn net-tools nmap firejail -y

# Build tools
sudo pacman -S --needed base-devel hwloc openssl cmake libmicrohttpd numactl msr-tools geany -y

# Coreboot
sudo pacman -S --needed python gcc-ada flex bison ncurses wget zlib acpica -y

# Gnome tools
sudo pacman -S --needed gnome-tweaks gnome-tweak-tool dconf-editor chrome-gnome-shell  -y

# Web
sudo pacman -S --needed tor jdk-openjdk transmission-gtk flashplugin chromium nextcloud-client -y

# Media 
sudo pacman -S --needed lame gthumb vlc cmus audacity soundconverter pulseeffects ncmpcpp -y

# Virtualization
#sudo pacman -S --needed virtualbox virtualbox-host-dkms virtualbox-guest-iso virtualbox-ext-pack -y

# Other tools
#sudo pacman -S android-tools mpv cmus timeshift dosfstools mstools hdparm tcpdump -y

# Fix DHCP on NetworkManager
#sudo echo "[main]" >> /etc/NetworkManager/conf.d/dhcp-client.conf
#sudo echo "dhcp=dhclient" >> /etc/NetworkManager/conf.d/dhcp-client.conf

# AMD video driver
#sudo pacman -S --needed xf86-video-amdgpu

#Intel visoe driver
#sudo pacman -S --needed xf86-video-intel

# Install Yay
#git clone https://aur.archlinux.org/yay.git
#cd yay
#makepkg -si

# AUR Update
yay -Syu

# AUR Software
yay -S --needed downgrade pamac-aur inxi tor-browser teamviewer wireshark-git cli-visualizer imagewriter tldr++ -y

# AUR Fonts
yay -S --needed nerd-fonts-source-code-pro nerd-fonts-liberation-mono lexend-fonts-git libxft-bgra-git -y

# Disable GDM Auto-Suspend (Gnome) When no User is logged in
sudo -u gdm dbus-launch gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type 'nothing'

# Fix Gnome Minimize/Maximize buttons
gsettings set org.gnome.desktop.wm.preferences button-layout ':minimize,maximize,close'

#Enable fstrim
sudo systemctl enable fstrim.timer
sudo systemctl start fstrim.timer

# Poly Dark GRUB theme
wget -O - https://github.com/shvchk/poly-dark/raw/master/install.sh | bash 
