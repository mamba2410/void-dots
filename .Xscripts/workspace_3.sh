#!/bin/bash

#i3-msg 'workspace 3:; exec urxvt; exec urxvt; exec urxvt;append_layout /home/callum/.i3/workspace-3-vim.json'
i3-msg "workspace 3:; append_layout $HOME/.Xscripts/workspace-3-st.json"
$TERMINAL &
$TERMINAL &
$TERMINAL &
