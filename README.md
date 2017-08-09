# Desktop
------------
```
[Desktop Entry]
Name=Dwm
Exec=~/dwm/.xsession
```

# Dependencies
------------
In file dependencies are the install commands to get the dependencies to run dwm.

# Installation
------------
Edit config.mk to match your local setup 

Afterwards enter the following command to build and install dwm (if
necessary as root):

    make clean install
    
# Some configurations
------------
* Level brightness default: edit: `/etc/rc.local`

    `echo 479 > /sys/class/backlight/intel_backlight/brightness`
    
    `echo 479 > /sys/class/backlight/intel_backlight/actual_brightness`
