#!/bin/sh

rofi_label="$2"
[ -z $rofi_label ] && rofi_label="Choose"

n_term=$3
[ -z $n_term ] && n_term=1

#rofi_options_file="$XDG_DATA_HOME/xscripts/$1" 
rofi_options_file="$1"

rofi_err_msg="cat can't open file:\n~${rofi_options_file##$HOME}"

rofi_options=""
rofi_options=$(cat $rofi_options_file | awk '{print $1}')
[ -z "$rofi_options" ] && rofi_options=$rofi_err_msg

rofi_choice=$(echo "$rofi_options" | rofi -p "$rofi_label" -dmenu )

if [ -z $rofi_choice ]; then
	echo "No choice from rofi, abort."
	exit
fi

rofi_choice_path=$(grep "^$rofi_choice" "$rofi_options_file" | awk '{print $2}')

if [ -z $rofi_choice_path ]; then
	echo "Not in file, taking choice as path"
	rofi_choice_path="$rofi_choice"
fi

cd "$rofi_choice_path" || exit

for i in $(seq 1 $n_term); do
	$TERMINAL &
done

