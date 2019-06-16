#!/bin/bash

base=$1
option=$(ls $base | sed 's/\s/\n/g' | rofi -p "Edit " -dmenu)
[ ! -z "$option" ] && vim $base/$option

