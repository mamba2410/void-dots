#!/bin/bash

sdir="$HOME/user/Libraries/Screenshots"
fname='%Y%m%d_%H%M%S_select.png'

scrot "$sdir/$fname" -s -e 'convert $f -crop +1+1 $f'
notify-send "Screenshot taken" "selection"
