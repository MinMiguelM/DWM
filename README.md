# Install ArchLinux

/etc/resolv.conf
options timeout:1

https://wiki.archlinux.org/index.php/Pacman/Package_signing#Cannot_import_keys
/etc/pacman.d/gnupg/gpg.conf
keyserver hkp://pgp.mit.edu:11371
pacman-key --refresh-keys

https://www.ostechnix.com/arch-anywhere-an-easy-way-to-install-a-fully-custom-arch-linux-system/


# i3 for ArchLinux

## Installation
sudo pacman -S i3

## Wallpaper manager
sudo pacman -S fuh

## Key detector
 - xev
 
## TLP
 - Package: https://aur.archlinux.org/packages/tlp-git/
 - Required: acpi_call
 - File to setup: /etc/default/tlp
   * START_CHARGE_THRESH_BAT0=85
   * STOP_CHARGE_THRESH_BAT0=90
## Custom fish commands
 - ~/.config/fish/config.fish (If it does not exist, create it)
 - echo "set -gx PATH \$PATH <path>" >> ~/.config/fish/config.fish (set <path> to ~/bin)
