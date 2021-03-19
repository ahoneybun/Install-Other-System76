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

Then we will create a live disk using the ISO file and a flash drive/thumb drive using these steps:

http://support.system76.com/articles/live-disk/

## Connect to the Network

This can be done though the installer though only Ethernet will be avaiable unless you use the non-free ISO (it is unofficial so not updated very well). 

# Sources used
-
-
