#!/bin/sh

rofi_options_file="/home/$(whoami)/.Xscripts/ecode_o" 

rofi_options=$(cat $rofi_options_file | awk '{print $1}')
rofi_choice=$(echo "$rofi_options" | rofi -p "code" -dmenu )

if [ -z $rofi_choice ]; then
	echo "No choice from rofi, abort."
	exit
fi

rofi_choice_path=$(grep "^$rofi_choice" "$rofi_options_file" | awk '{print $2}')

#echo $rofi_choice_path

if [ -z $rofi_choice_path ]; then
	echo "Not in file, taking choice as path"
	rofi_choice_path="$rofi_choice"
fi

cd "$rofi_choice_path" || exit
$TERMINAL &
$TERMINAL &
#~/.Xscripts/workspace_3.sh single

