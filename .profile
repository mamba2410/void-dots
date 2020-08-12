
# Export and change a few global variables
export TERMINAL="st"
export EDITOR="nvim"


[ -z "$XDG_DATA_HOME" ] || export XDG_DATA_HOME="$HOME/.local/share"
[ -z "$XDG_CONFIG_HOME" ] || export XDG_CONFIG_HOME="$HOME/.config"
[ -z "$XDG_CACHE_HOME" ] || export XDG_CACHE_HOME="$HOME/.cache"

PATH="$HOME/bin:$HOME/.local/bin:$PATH:$HOME/.scripts:/opt/texlive/2018/bin/x86_64-linux"
PATH="$PATH:$XDG_DATA_HOME/xscripts"

# Set a bunch of envirinment variables to clean home dir
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv
export DVDCSS_CACHE="$XDG_DATA_HOME"/dvdcss
export GNUPGHPME="$XDG_DATA_HOME"/gnupg
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export HISTFILE="$XDG_DATA_HOME"/bash/bash_history
export INPUTRC="$XDG_CONFIG_HOME"/readline/inputrc
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export TERMINFO="$XDG_DATA_HOME"/terminfo
export TERMINFO_DIRS="$XDG_DATA_HOME"/terminfo:/usr/share/terminfo
export VIMINIT=":source $XDG_CONFIG_HOME"/vim/vimrc
export XAUTHORITY="$XDG_DATA_HOME"/Xauthority
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass

#[ "$XDG_CURRENT_DESKTOP" = "KDE" ] || [ "$XDG_CURRENT_DESKTOP" = "GNOME" ] || export QT_QPA_PLATFORMTHEME="qt5ct"

export QT_QPA_PLATFORMTHEME=gtk2

. ~/.bashrc
## Once done loading .profile, look in .bashrc
#if [ -n "BASH" ] && [ -r ~/.bashrc ]; then
#	. ~/.bashrc
#fi

export PATH="/home/callum/.local/share/cargo/bin:$PATH"
