#!/usr/bin/env bash

slstatus -d
while true
do
	BATT=$( acpi -b | sed 's/.*[charging|unknown], \([0-9]*\)%.*/\1/gi' )
	STATUS=$( acpi -b | sed 's/.*: \([a-zA-Z]*\),.*/\1/gi' )
	if ([ $BATT -le 10 ] && [ $STATUS == 'Discharging' ]); then
		notify-send 'Battery low' 'Plug in the PC'
		# Beep
		paplay --volume=65536 /usr/share/sounds/ubuntu/notifications/Xylo.ogg && sleep 0.2
		paplay --volume=65536 /usr/share/sounds/ubuntu/notifications/Xylo.ogg && sleep 0.2
		paplay --volume=65536 /usr/share/sounds/ubuntu/notifications/Xylo.ogg && sleep 0.2
	fi
	# Update every 10s sleep 10s
	sleep 10s
done &
exec dwm
