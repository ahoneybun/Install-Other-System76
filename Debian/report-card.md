### System(s) tested
- galp3-b (Closed Firmware)

#### Features

- [x] Firmware Updates (CLI only)
- [x] Keyboard backlight key combo(s)
- [x] Screen backlight key combos
- [x] Sound key combos
- [ ] System76 Driver Log creation
- [ ] Graphic Switching (only applies to NVIDIA systems)
- [ ] Power profiles (GNOME Shell 3.38 Extension and command line)

NVIDIA systems will be in NVIDIA mode at all times. Right now we can't install system76-power and other packages due to libc6 being too old. 

| Item | Notes | Grade |
|:--------:|:------------:|:----:|
| Booting from media | Boots up to the installer with no changes | A |
| OS Install | OS installs to the drive with no changes | A |
| Booting from new install | OS boots from the drive with no changes | A |
| Install System76 Software | Not in the main repos | C |
| System76 Software | Most software can't be installed | F |
