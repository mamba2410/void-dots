#!/bin/bash

sdir="$HOME/user/Libraries/Screenshots"
fname='%Y%m%d_%H%M%S_single.png'

scrot "$sdir/$fname"
notify-send "Screenshot taken" "Multi"
