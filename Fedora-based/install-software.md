# Fedora 34

> Install [Community COPR Repo](https://copr.fedorainfracloud.org/coprs/szydell/system76/)

```
sudo dnf copr enable szydell/system76
sudo dnf install system76-driver
```

## Install System76 Firmware (CLI tool for firmware updates)

```
sudo dnf install system76-firmware
sudo systemctl enable --now system76-firmware-daemon
```

## Install Firmare Manager (GUI tool for firmware updates)

```
sudo dnf install firmware-manager
sudo systemctl enable --user com.system76.FirmwareManager.Notify.timer
sudo gpasswd -a $USER adm
```

## Install System76 Driver

```
sudo dnf install system76-driver
```

## Install System76 Power

```
sudo dnf install system76-power
sudo systemctl enable system76-power system76-power-wake
sudo systemctl start system76-power
```

## Install System76 DKMS package (non-Open Firmware systems)

```
sudo dnf install system76-dkms
```

## Install System76 ACPI DKMS package (Open Firmware systems)

```
sudo dnf install system76-acpi-dkms
```

## Install System76 Io DKMS package (Thelio Io board)

```
sudo dnf install system76-io-dkms
```