#!/bin/sh

default_sink="$(pactl get-default-sink)"
sink="$3"
sink="${sink:=$default_sink}"
vol_val="$2"
vol_val="${vol_val:="10%"}"

if [ "$1" = "mute" ]; then
    pactl set-sink-mute $sink toggle
    exit $?
fi

case $1 in
    "up")
        vol="+$vol_val";;
    "down")
        vol="-$vol_val";;
    "set")
        vol="$vol_val";;
    *);;
esac


pactl set-sink-volume $sink $vol

