
# Export and change a few global variables
export TERMINAL="st"
export EDITOR="nvim"
PATH="$HOME/bin:$HOME/.local/bin:$PATH:$HOME/.scripts:/opt/texlive/2018/bin/x86_64-linux"

#[ "$XDG_CURRENT_DESKTOP" = "KDE" ] || [ "$XDG_CURRENT_DESKTOP" = "GNOME" ] || export QT_QPA_PLATFORMTHEME="qt5ct"

export QT_QPA_PLATFORMTHEME=gtk2

. ~/.bashrc
## Once done loading .profile, look in .bashrc
#if [ -n "BASH" ] && [ -r ~/.bashrc ]; then
#	. ~/.bashrc
#fi
