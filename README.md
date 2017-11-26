# i3 for ArchLinux

## Installation
sudo pacman -S i3

## Key detector
 - xev
 
## TLP
 - Package: https://aur.archlinux.org/packages/tlp-git/
 - Required: acpi_call
 - File to setup: /etc/default/tlp
  * START_CHARGE_THRESH_BAT0=85
  * STOP_CHARGE_THRESH_BAT0=90
