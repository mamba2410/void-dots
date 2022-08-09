#!/bin/sh

# Export and change a few global variables
export EDITOR="nvim"

if [ $OSTYPE = "linux-gnu" ] || [ $OSTYPE = "linux-musl" ]; then
    export TERMINAL="st"
    export TERM=$TERMINAL
    [ -z "$XDG_DATA_HOME" ]   && export XDG_DATA_HOME="$HOME/.local/share"
    [ -z "$XDG_CONFIG_HOME" ] && export XDG_CONFIG_HOME="$HOME/.config"
    [ -z "$XDG_CACHE_HOME" ]  && export XDG_CACHE_HOME="$HOME/.cache"
    [ -z "$XDG_RUNTIME_DIR" ] && export XDG_RUNTIME_DIR="/tmp/runtime"

elif [ $OSTYPE = "msys" ] || [ $OSTYPE = "cygwin" ]; then
    export TERMINAL="xterm-256color"
    export TERM=$TERMINAL
    [ -z "$XDG_DATA_HOME" ]   && export XDG_DATA_HOME="$HOME/AppData/Local"
    [ -z "$XDG_CONFIG_HOME" ] && export XDG_CONFIG_HOME="$HOME/AppData/Local"
    [ -z "$XDG_CACHE_HOME" ]  && export XDG_CACHE_HOME="$HOME/.cache"
    [ -z "$XDG_RUNTIME_DIR" ] && export XDG_RUNTIME_DIR="/tmp/runtime"

fi

PATH="$PATH:$HOME/.local/bin"
PATH="$PATH:$XDG_DATA_HOME/xscripts"
PATH="$PATH:$XDG_DATA_HOME/cargo/bin"

# Set a bunch of envirinment variables to clean home dir
# See https://wiki.archlinux.org/title/XDG_Base_Directory#Support
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
export TEXMFHOME="$XDG_DATA_HOME"/texlive
export PYHIST="$XDG_DATA_HOME/python_history"
export LESSHISTFILE="-"
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
export INPUTRC="$XDG_CONFIG_HOME/inputrc"
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME/jupyter"
export PYLINTHOME="$XDG_CACHE_HOME/pylint"
export CONDARC="$XDG_CONFIG_HOME/conda/condarc"
export FFMPEG_DATADIR="$XDG_CONFIG_HOME/ffmpeg"
export TEXMFHOME="$XDG_DATA_HOME/texmf"
export TEXMFVAR="$XDG_CACHE_HOME/texlive/texmf-var"
export TEXMFCONFIG="$XDG_CONFIG_HOME/texlive/texmf-config"
export GRADLE_USER_HOME="$XDG_DATA_HOME/gradle"

export PICO_TOOLCHAIN=$HOME/repos/pico/arm-none-eabi-gcc/bin
export PICO_SDK_REPO=$HOME/repos/pico/sdk
export PICO_SDK_PATH=$HOME/repos/pico/sdk

#[ "$XDG_CURRENT_DESKTOP" = "KDE" ] || [ "$XDG_CURRENT_DESKTOP" = "GNOME" ] || export QT_QPA_PLATFORMTHEME="qt5ct"
export QT_QPA_PLATFORMTHEME=gtk2

## Once done loading .profile, look in .bashrc
BASHRC=$HOME/.bashrc
if [ -n "BASH" ] && [ -r $BASHRC ]; then
	source $BASHRC
fi

