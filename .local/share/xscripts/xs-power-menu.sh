#!/bin/bash

shutdown=""
reboot=""
lock=""

options="$shutdown\n$reboot\n$lock"
uptime=$(uptime | awk -F' |,' '{printf $5}' | awk -F":" '{printf $1 " hours, " $2 " minutes"}')

choice=$( echo -e $options | rofi -dmenu -p "uptime: $uptime" -theme "power_menu" )
case $choice in
	"$shutdown")
		echo "Shutting down..."
		shutdown.sh shutdown
		;;
	"$reboot")
		echo "Rebooting..."
		shutdown.sh reboot
		;;
	"$lock")
		echo "Locking screen..."
		xs-lock-screen.sh
		;;
	*)
		echo "No match found"
		;;
esac
