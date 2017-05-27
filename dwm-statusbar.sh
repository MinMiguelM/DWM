# ~/bin/dwm-statusbar
# Adapted from w0ng status bar: https://github.com/w0ng/bin
# Adapted from jasonwryan status bar: https://bitbucket.org/jasonwryan/shiv/src/1ad5950c3108a4e5a9dcb78888a1ccfeb9252b45/Scripts/dwm-status?at=default
# Some original work/modifications by frank: https://github.com/frank604

# Colour codes from dwm/config.h
color0="x01" # normal  
color6="x06" # brightblue

#---separator                              
sp="$(echo -ne "${color0} ")" 
sp1="$(echo -ne "${color0} | ")" 
sp2="$(echo -ne "${color0}| ")"
sp3="$(echo -ne "${color0}|")"

#print_song_info() {
#  track="$(mpc current)"
#  artist="${track%%- *}"
#  title="${track##*- }"
#  [[ -n "$artist" ]] && echo -e "${color0}ê${sp}${color5}${artist}${color9}${title} ${color0}|"
#}

print_datetime() {
  datetime="$(date "+%a %d %b %I:%M")"
  echo -ne "${datetime}"
}

# Pipe to status bar, not indented due to printing extra spaces/tabs
xsetroot -name "$(print_datetime)"

done