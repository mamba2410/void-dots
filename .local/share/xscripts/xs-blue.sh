#!/bin/sh

devices_file="$XDG_DATA_HOME/xscripts/bluetooth_devices.txt"
devices=$(cat $devices_file)

choice=$( echo "$devices" | rofi -dmenu -p "Bluetooth connect")

[ -z $choice ] || bluetoothctl connect $choice
