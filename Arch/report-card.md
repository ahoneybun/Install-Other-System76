# System(s) tested
- galp3-b (Closed Firmware)
- oryp4 (Closed Firmware)
- oryp6 (Open Firmware)

## Features

- [x] Firmware Updates (CLI and GUI)
- [x] Keyboard backlight key combo(s)
- [x] Screen backlight key combos
- [x] Sound key combos
- [x] System76 Driver Log creation
- [ ] Graphic Switching 
- [x] Power profiles (GNOME Shell 40 Extension and command line work)
- [ ] Power profiles (GNOME Shell 41 Extension and command line work)

| Item | Notes | Grade |
|:--------:|:------------:|:----:|
| Booting from media | Boots up to the installer with no changes | A |
| OS Install | OS installs to the drive with no changes | A |
| Booting from new install | OS boots from the drive with no changes | A |
| Install System76 Software | Software is available from the AUR | A |
| System76 Software | Only software that does not work is system76-power with GNOME 41 | C |

### oryp6 Screenshots

#### Graphic Switching 

![NVIDIA mode](https://github.com/ahoneybun/Install-Other-System76/blob/main/Screenshots/arch-nvidia-mode.png)

![Compute/Integrated](https://github.com/ahoneybun/Install-Other-System76/blob/main/Screenshots/arch-compute_integrated-mode.png)

When trying to switch to Integrated the `system76-power` package instead reports Compute and `nvidia-smi` reports that the NVIDIA GPU is indeed on but not being used so more kinda like Hybrid.
