#!/bin/bash

options="Shutdown\nReboot\nLogout\nLock\nExit i3\nKill all windows"
choice=$( echo -e $options | rofi -dmenu -p "Power Menu" -theme "power_menu" )
case $choice in
	"Shutdown")
		echo "Shutting down..."
		shutdown.sh shutdown
		#sudo shutdown -h now
		;;
	"Reboot")
		echo "Rebooting..."
		shutdown.sh reboot
		#sudo shutdown -r now
		;;
	"Logout")
		echo "Logging out..."
		i3-msg exit
		;;
	"Lock")
		echo "Locking screen..."
		./lock_screen.sh
		;;
	"Kill all windows")
		echo "Killing all windows"
		i3-msg '[class=".*"] kill'
		;;
	"Exit i3")
		echo "Exiting i3"
		i3-msg exit
		;;
	*)
		echo "No match found"
		;;
esac
