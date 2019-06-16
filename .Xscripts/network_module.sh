#!/bin/bash
spd=$(sudo ethtool enp5s0| grep -i speed | awk '{print $2}')
eth=$(ip -br -f inet address | awk '{print $3}' | sed '/127/d; s/\/.*$//')

if [ $1 -eq 0 ] ; then
	echo "IP: $eth"
elif [ $1 -eq 1 ] ; then
	echo "S: $spd"
fi

