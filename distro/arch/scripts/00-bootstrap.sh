#!/bin/bash

packages="lightdm 
lightdm-gtk-greeter 
xf86-video-fbdev 
binutils 
make 
noto-fonts 
sudo 
git 
gcc 
xorg-xinit 
xorg-server 
onboard 
bluez 
bluez-tools 
bluez-utils
openbox 
sudo 
kitty
netctl
wpa_supplicant
dhcpcd
dialog 
mesa
networkmanager"


"$UTILITIES_DIR"/install-scripts/pacstrap "$ROOTFS_DIR" $packages

bash 01-configure.sh
