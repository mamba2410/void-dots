#!/bin/bash

sdir="$HOME/user/Libraries/Screenshots"
fname='%Y%m%d_%H%M%S_single.png'

scrot "$sdir/$fname" -u
notify-send "Screenshot taken" "Single"
