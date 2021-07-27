# Enable graphics switching using system76-power

## Edit GDM config file

```bash
sudo nano /etc/gdm/custom.conf
```

Remove the comment for this line:

```
#WaylandEnable=false
```

## Install the NVIDIA driver

```bash
sudo pacman -S nvidia
```

## Switch to NVIDIA using system76-power

```bash
sudo system76-power graphics nvidia
```

### Reboot 

```bash
sudo systemctl reboot
```
