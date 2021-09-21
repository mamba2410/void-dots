#!/bin/bash

file_directory="$HOME/pic/screenshots"
#file_name="$file_directory/TESTER.png"
file_name="$file_directory/%Y%m%d-%H%M%S-$1.png"
file_path=""

case $1 in 
	"single")
		file_path=$(scrot $file_name --focused --exec 'echo $f')
		;;
	"select")
		#args="--select --exec 'convert \$f -crop +1+1 $f; echo \$f'"
		file_path=$(scrot $file_name --select --exec 'echo $f')
		convert $file_path -crop +1+1 $file_path
		;;
	"all")
		file_path=$(scrot $file_name --exec 'echo $f')
		;;
	*)
		notify-send "Unrecognised argument" "$1"
		exit
		;;
esac

notify-send "Screenshot taken ($1)" "$file_path"
xclip -selection c -t image/png "$file_path"
