# Debian 11 (WIP)

> These deb files have been built by me and untested by any QA or Engineering at System76

## Install System76 Firmware (CLI tool for firmware updates)

### Download the [`system76-firmware.deb`](https://github.com/ahoneybun/Install-Other-System76/blob/main/Debian/system76-firmware_1.0.26_amd64.deb) file

#### Install it:

```
sudo dpkg -i system76-firmware.deb
```

## Install Firmware Manager (GUI tool for firmware updates)

### Download the [`firmware-manager.zip`](https://github.com/ahoneybun/Install-Other-System76/blob/main/Debian/firmware-manager.zip) (there are 5 files in total)

#### Install them:

```
cd folder-name
sudo dpkg -i *
```

#### Add user to the adm group (for Firmware Manager)

```
su
sudo usermod -aG adm $USER
```

Read [this article](https://support.system76.com/articles/system-firmware) to learn more about firmware updates.

---

BROKEN

## Install System76 Driver (does audio fixes and create log files) [WIP]

### Download the `system76-driver.deb` file

#### Install it:

```
sudo dpkg -i system76-driver-deb
```

## Install System76 Power (does power and graphics switching) [WIP]

### Download the `system76-power.deb` file

#### Install it (note that it needs the `ubuntu-drivers-common` package:

```
sudo dpkg -i system76-power.deb
```

---

## Install python3-xkit from Ubuntu

```
apt install wget
wget http://mirrors.kernel.org/ubuntu/pool/main/x/x-kit/python3-xkit_0.5.0ubuntu4_all.deb
apt install ./python3-xkit_0.5.0ubuntu4_all.deb
```
