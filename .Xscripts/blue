#!/bin/sh

devices=$(cat ~/.Xscripts/devices.txt)

choice=$( echo "$devices" | rofi -dmenu -p "Bluetooth connect")

[ -z $choice ] || bluetoothctl connect $choice
