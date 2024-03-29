### System(s) tested
- galp3-b (Closed Firmware)
- thelio-b1 (Closed Firmware)

#### Features

- [x] Firmware Updates (CLI and GUI)
- [x] Keyboard backlight key combo(s)
- [x] Screen backlight key combos
- [x] Sound key combos
- [x] System76 Driver Log creation
- [ ] Graphic Switching
- [x] Power profiles 

| Item | Notes | Grade |
|:--------:|:------------:|:----:|
| Booting from media | Boots up to the installer with no changes | A |
| OS Install | OS installs to the drive with no changes | A |
| Booting from new install | OS boots from the drive with no changes | A |
| Install System76 Software | Software is available from the AUR | A |
| System76 Software | Only software that does not work is system76-power GNOME Extension with GNOME 44 | C |

For System76 Power you do need to mask power-profiles-daemon:

```bash
sudo systemctl mask power-profiles-daemon.service
```

 GNOME Shell Extension does not support GNOME 44
