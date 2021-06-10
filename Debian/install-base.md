## Debian-install

### This was done on a System76 Oryx Pro (oryp4)

This is the end partition layout using the steps below:

```nvme0n1        259:0    0 465.8G  0 disk  
├─nvme0n1p1    259:1    0     1G  0 part  /boot
├─nvme0n1p2    259:2    0   457G  0 part  /
└─nvme0n1p3    259:3    0   7.8G  0 part  [SWAP]
```

## Boot from Live Disk

First we would download the Debian Testing (bullseye as of this article creation) from here:

https://cdimage.debian.org/cdimage/weekly-builds/amd64/iso-dvd/

Debian Testing is recommended as current Debian Stable (Debian 10) has Linux Kernel 4.19 and current Debian Testing has Linux Kernel 5.10.0. 

Then we will create a live disk using the ISO file and a flash drive/thumb drive using these steps:

http://support.system76.com/articles/live-disk/

### Connect to the Network

This can be done though the installer though only Ethernet will be avaiable unless you use the non-free ISO (it is unofficial so not updated very well). 

#### Editing sources.list file

1. Switch to the root user : `su root`
2. Edit the sources.list file : `nano /etc/apt/sources.list`
3. Set up the lines like below:

```
deb http://deb.debian.org/debian bullseye main contrib non-free
# deb-src http://deb.debian.org/debian bullseye main contrib non-free

deb http://deb.debian.org/debian-security/ bullseye/updates main contrib non-free
# deb-src http://deb.debian.org/debian-security/ bullseye/updates main contrib non-free

deb http://deb.debian.org/debian bullseye-updates main contrib non-free
# deb-src http://deb.debian.org/debian bullseye-updates main contrib non-free
```

#### Fully update and upgrade the system

```
apt update -m
apt upgrade
apt full-upgrade
```

Once that is complete we can reboot the system into the Debian 11 release (bullseye) and the new NVIDIA driver:

```
systemctl reboot
```

#### Add user to sudo group 

```
su 
sudo usermod -aG sudo $USER 
```

Replace $USER with your username

#### Installing the iwlwifi firmware and the NVIDIA driver (only for NVIDIA systems) 

**NOTE:** with this version of the NVIDIA driver you will not have switchable graphics. 

```
apt install firmware-iwlwifi
apt install nvidia-driver
```

### This will set up the system so that you can use the NVIDIA GPU but you can't switch graphics to use the Intel GPU. 

# Sources used
- https://wiki.debian.org/SourcesList
-
