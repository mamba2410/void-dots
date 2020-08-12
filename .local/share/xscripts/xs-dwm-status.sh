#!/bin/sh

while true; do

	s_time="$(date +%H:%M)"
	s_date="$(date +%Y/%m/%d)"
	s_mem_total=$(grep "^MemTotal" /proc/meminfo | awk '{print $2}')
	s_mem_free=$(grep "^MemFree" /proc/meminfo | awk '{print $2}')
	#s_mem_m="$(( ($s_mem_total-$s_mem_free)/1024 ))M/$(( $s_mem_total/1024 ))M"
	s_mem_p="$(( 100*($s_mem_total-$s_mem_free)/$s_mem_total ))%"
	s_cpu_p="$(top -bn2 | grep "^\%Cpu" | awk ' FNR==1 {print $4}')%"
	#s_vol_p=$(pactl list sinks | grep "^\WVolume" | awk '{print $5}') # $11 for right
	s_vol_p=$(pactl list sinks | awk '/^\tVolume: /{print $5}' | sed -n 2p) # $11 for right, '2' is which sink to list
	
	
	status_string="C: $s_cpu_p  M: $s_mem_p  V: $s_vol_p  $s_time"
	xsetroot -name "$status_string"
	sleep 5
	
done
