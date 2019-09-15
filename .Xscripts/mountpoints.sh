#!/bin/sh

t=0
mp="/boot"

cycle() {
	t=$(((t+1) % 3))	
}

trap "cycle" USR1

while true; do

	# yes there is a better way to do this but I got tired of trying to figure it out so here we go please don't kill me thanks
	if [ $t -eq 0 ]; then
		mp="/boot"
	elif [ $t -eq 1 ]; then
		mp="/"
	else
		mp="/home"
	fi
	printf "$mp "
	df -h | grep "$mp$" | awk '{print $3}'
	sleep 5 &
	wait
done

