
# Export and change a few global variables
export TERMINAL="st"
export EDITOR="nvim"
PATH="$HOME/bin:$HOME/.local/bin:$PATH:$HOME/.scripts:/opt/texlive/2018/bin/x86_64-linux"


# Set a bunch of envirinment variables to clean home dir
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv
export DVDCSS_CACHE="$XDG_DATA_HOME"/dvdcss
export GNUPGHPME="$XDG_DATA_HOME"/gnupg
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export HISTFILE="$XDG_DATA_HOME"/bash/bash_history
export INPUTRC="$XDG_CONFIG_HOME"/readline/inputrc
export TERMINFO="$XDG_DATA_HOME"/terminfo
export TERMINFO_DIRS="$XDG_DATA_HOME"/terminfo:/usr/share/terminfo
export VIMINIT=":source $XDG_CONFIG_HOME"/vim/vimrc
#export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority

#[ "$XDG_CURRENT_DESKTOP" = "KDE" ] || [ "$XDG_CURRENT_DESKTOP" = "GNOME" ] || export QT_QPA_PLATFORMTHEME="qt5ct"

export QT_QPA_PLATFORMTHEME=gtk2

. ~/.bashrc
## Once done loading .profile, look in .bashrc
#if [ -n "BASH" ] && [ -r ~/.bashrc ]; then
#	. ~/.bashrc
#fi
