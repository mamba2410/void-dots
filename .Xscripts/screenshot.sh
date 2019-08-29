#!/bin/bash

sdir="$HOME/pic/screenshots"

case $1 in 
	single)
		args="-u"
		;;
	select)
		args="-s -e 'convert $f crop +1+1 $f'"
		;;
	multi)
		args=""
		;;
	*)
		echo "Unrecognised argument $1"
		return
		;;
esac

scrot "$sdir/%Y%m%d-%H%M%S-$1.png" $args
notify-send "Screenshot taken" "$1"
