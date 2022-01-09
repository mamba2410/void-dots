#!/bin/sh
[ -f $XDG_CONFIG_HOME/X11/xresources ] && xrdb -merge $XDG_CONFIG_HOME/X11/xresources

#if test -x "$DBUS_SESSION_BUS_ADDRESS" ; then
#	eval 'dbus-launch --sh-syntax --exit-with-session'
#	echo "DBUS per-session daemon address is: $DBUS_SESSION_BUS_ADDRESS"
#fi

eval 'dbus-launch --sh-syntax --exit-with-session'

xset r rate 300 40
setxkbmap gb -option "caps:swapescape"
xrandr --output DVI-D-1 --right-of HDMI-1

# Mouse sensitivity modifier, range [-1,+1], default 0
#xinput --set-prop 11 'libinput Accel Speed' 0.8

export GTK_IM_MODULE="fcitx"
export QT_IM_MODULE="fcitx"
export SDL_IM_MODULE_DEFAULT="fcitx"
export XMODIFIERS="@im=fcitx"
fcitx5 -d &

picom -fb &
feh --bg-scale "$XDG_DATA_HOME/wallpaper/wallpaper.png" &
#$TERMINAL -n maths_python -e python -q &
$XDG_DATA_HOME/xscripts/xs-dwm-status.sh &

exec dwm
