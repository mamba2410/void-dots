#!/bin/sh
[ -f $XDG_CONFIG_HOME/X11/xresources ] && xrdb -merge $XDG_CONFIG_HOME/X11/xresources

if test -x "$DBUS_SESSION_BUS_ADDRESS" ; then
	eval 'dbus-launch --sh-syntax --exit-with-session'
	echo "DBUS per-session daemon address is: $DBUS_SESSION_BUS_ADDRESS"
fi

nm-applet &

xset r rate 300 40
setxkbmap gb -option "caps:swapescape"
exec i3
