#!/bin/bash

## A quick script for those of us that prefer the lazy way

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

#Add System76 Repo then update
add-apt-repository ppa:system76-dev/stable

apt update  -m
apt upgrade
apt full-upgrade
apt install firmware-iwlwifi

#Check lspci for nvidia devices, and install drivers if they're there
if (lspci | grep -qi nvidia) 
	then 
		echo "Installing Nvidia Drivers"
		apt install nvidia-driver
       	else 
		echo "Skipping Nvidia Drivers"
fi

#Python kit
apt install wget
wget http://mirrors.kernel.org/ubuntu/pool/main/x/x-kit/python3-xkit_0.5.0ubuntu4_all.deb
apt install ./python3-xkit_0.5.0ubuntu4_all.deb
rm python3-xkit_0.5.0ubuntu4_all.deb

#And a cheeky install of system76 Wallpapers

apt install system76-wallpapers

