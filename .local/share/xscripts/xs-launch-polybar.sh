#!/bin/sh

# Terminate already running bar instances
killall -q polybar
#pkill polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Check which bars to run when differing screens are detected
polybar screen_single &

