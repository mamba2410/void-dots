#!/bin/sh

## Assumes user has `playerctl` installed and a correct dbus config
## defaults to checking `spotify` player but arg1 is program to check (eg firefox, vlc, mpd)

player="$1"
player="${player:='spotify'}"
format="{{ artist }} - {{ title }}"

status=`playerctl status --player="$player" 2>/dev/null`

if [ $? = 0 ]; then
    cmd=`playerctl metadata --player="$player" --format="$format"`
else
    status="Stopped"
fi

if [ "$status" = "Stopped" ] ; then
    message=""
elif [ "$status" = "Paused" ]; then
    message=": $cmd"
else
    message=": $cmd"
fi

echo $message

