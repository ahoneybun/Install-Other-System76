# Development packages to install:

```
sudo apt install at pm-utils
```

system76-firmware:
-------------------

Packages for building:

```
sudo apt install libssl-dev liblzma-dev cargo rustc build-essential libdbus-glib-1-dev libgirepository1.0-dev
```

```
git clone https://github.com/pop-os/system76-firmware.git
cd system76-firmware
make
sudo make install
```

firmware-manager:
------------------

Packages for building:

```
sudo apt install libudev-dev libcairo2-dev libjpeg-dev libgif-dev libpango1.0-dev libgdk-pixbuf2.0-dev libatk1.0-dev libgtk-3-dev
```

```
git clone https://github.com/pop-os/firmware-manager.git
cd firmware-manager
make
sudo make install
```

If installing the deb files install the in this order:

firmware-manager-notify
firmware-manager-shared
firmware-manager
libfirmware-manager
libfirmware-manager-dev

system76-power:
----------------

Packages for building:

```
sudo apt install libusb-1.0-0
```

Packages for installing:

ubuntu-drivers-common

system76-dkms:
---------------

WIP

linux-system76:
----------------

Packages for building:

```
sudo apt install kernel-wedge dctrl-tools makedumpfile libcap-dev libelf-dev libnewt-dev libiberty-dev default-jdk-headless java-common rsync libdw-dev libpci-dev flex bison libunwind8-dev libaudit-dev gawk libnuma-dev dkms curl lz4 dwarves xmlto docbook-utils ghostscript fig2dev sharutils asciidoc python3-sphinx python3-sphinx-rtd-theme python3-docutils imagemagick graphviz dvipng fonts-noto-cjk latexmk librsvg2-bin
```

system76-driver:
----------------

Packages for building:

```
sudo apt install dh-python pyflakes3 python3-all python3-evdev python3-pyflakes python3-systemd xbacklight
```

Issues:

```
dpkg: dependency problems prevent configuration of system76-driver:
 system76-driver depends on at; however:
  Package at is not installed.
 system76-driver depends on gnome-shell-extension-system76-power; however:
  Package gnome-shell-extension-system76-power is not installed.
 system76-driver depends on linux-system76; however:
  Package linux-system76 is not installed.
 system76-driver depends on pm-utils; however:
  Package pm-utils is not installed.
 system76-driver depends on system76-acpi-dkms; however:
  Package system76-acpi-dkms is not installed.
 system76-driver depends on system76-dkms; however:
  Package system76-dkms is not installed.
 system76-driver depends on system76-firmware-daemon; however:
  Package system76-firmware-daemon is not installed.
 system76-driver depends on system76-io-dkms; however:
  Package system76-io-dkms is not installed.
 system76-driver depends on system76-oled; however:
  Package system76-oled is not installed.
 system76-driver depends on system76-power; however:
  Package system76-power is not installed.
```
