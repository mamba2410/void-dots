#!/bin/sh

while true; do

	s_time="$(date +%H:%M)"
	s_date="$(date +%Y/%m/%d)"
	#s_mem_total=$(grep "^MemTotal" /proc/meminfo | awk '{print $2}')
	#s_mem_free=$(grep "^MemFree" /proc/meminfo | awk '{print $2}')
	#s_mem_m="$(( ($s_mem_total-$s_mem_free)/1024 ))M/$(( $s_mem_total/1024 ))M"
    s_mem_p=$(free --mebi | sed -n '2{p;q}' | awk '{printf ("%2.1f%", ($3/$2*100))}')
	s_cpu_p="$(top -bn2 | grep "^%Cpu" | awk ' FNR==1 {print $4}')%"
	#s_vol_p=$(pactl list sinks | grep "^\WVolume" | awk '{print $5}') # $11 for right

    sink="$(pactl get-default-sink)"
    s_vol_muted="$(pactl get-sink-mute $sink | awk '{print $2}')"
    if [ "$s_vol_muted" = "no" ]; then
	    s_vol_p=$(pactl get-sink-volume $sink | awk -F'/' '/Volume: /{print $2}' | awk '{$1=$1;print}')
    else
        s_vol_p="---"
    fi

	status_string="C: $s_cpu_p  M: $s_mem_p  V: $s_vol_p  $s_time"
	xsetroot -name "$status_string"
	sleep 5

done
