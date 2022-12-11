#!/bin/sh

## Assumes user has `playerctl` installed and a correct dbus config
## defaults to checking `spotify` player but arg1 is program to check (eg firefox, vlc, mpd)

action="$1"
[ -z $action ] && exit 1

if [ -z "$2" ]; then
    player="--all-players"
else
    player="--player=$2"
fi


format="{{ artist }} - {{ title }}"

status=`playerctl status $player 2>/dev/null`

if [ $? = 0 ]; then
    cmd=`playerctl metadata $player --format="$format"`
else
    status="Stopped"
fi


case $action in
    "list")
        playerctl --list-all ;;
    "status")
        echo "$status" ;;
    "show")
        if [ "$status" = "Stopped" ] ; then
            message=""
        elif [ "$status" = "Paused" ]; then
            message=" $cmd"
        else
            message=" $cmd"
        fi
        echo $message
        ;;
    "pause")
        playerctl pause $player ;;
    "play")
        playerctl play $player ;;
    "play-pause")
        playerctl play-pause $player ;;
    "next")
        playerctl next $player ;;
    "prev")
        playerctl previous $player ;;
    *) exit 2;;
esac

