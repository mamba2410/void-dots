#!/bin/bash

case $1 in
	"stacked")
			i3-msg "workspace 3:; append_layout $HOME/.Xscripts/w3-stacked-st.json";
			$TERMINAL; $TERMINAL; $TERMINAL;
		;;
	"single")
			i3-msg "workspace 3:; append_layout $HOME/.Xscripts/w3-single-st.json";
			$TERMINAL; $TERMINAL;
		;;
	*)
		;;
esac

