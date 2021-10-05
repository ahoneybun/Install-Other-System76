## Debian 10

### This was done on a System76 Oryx Pro (oryp4)

This is the end partition layout using the steps below:

```nvme0n1        259:0    0 465.8G  0 disk  
├─nvme0n1p1    259:1    0     1G  0 part  /boot
├─nvme0n1p2    259:2    0   457G  0 part  /
└─nvme0n1p3    259:3    0   7.8G  0 part  [SWAP]
```

## Boot from Live Disk

First we would download the Debian 11 non-free ISO from here (this includes the iwlwifi driver needed for the Intel Wi-Fi card):

https://cdimage.debian.org/cdimage/unofficial/non-free/cd-including-firmware/11.0.0+nonfree/amd64/iso-dvd/

Then we will create a live disk using the ISO file and a flash drive/thumb drive using these steps:

http://support.system76.com/articles/live-disk/

### Connect to the Network

This can be done though the installer.

#### Fully update and upgrade the system

```
apt update -m
apt upgrade
apt full-upgrade
```

#### Add user to sudo group 

```
su 
sudo usermod -aG sudo $USER
```

Replace $USER with your username.

#### Installing the iwlwifi firmware (only needed if you used the default free ISO) and the NVIDIA driver (only for NVIDIA systems) 

**NOTE:** with this version of the NVIDIA driver you will not have switchable graphics. 

```
apt install firmware-iwlwifi
apt install nvidia-driver
systemctl reboot
```

### This will set up the system so that you can use the NVIDIA GPU but you can't switch graphics to use the Intel GPU. 

# Sources used
- https://wiki.debian.org/SourcesList
