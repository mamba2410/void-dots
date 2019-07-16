# Read each time a shell session is opened, but not read on login shells unless explicitly stated in .bash_profile

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# Add colour to the terminal prompt
color_prompt=yes

# Sets cursor repeat key delay and frequency
# Only works when in X, so shouldn't be here
#xset r rate 250 50

# Customise prompt
#export PS1="\[$(tput bold)\]\[$(tput setaf 9)\][\[$(tput setaf 10)\]\u\[$(tput setaf 9)\]@\[$(tput setaf 13)\]\h \[$(tput setaf 14)\]\W\[$(tput setaf 9)\]]\[$(tput sgr0)\]\\$ "
export PS1="\[$(tput bold)\]\[$(tput setaf 5)\][\[$(tput setaf 14)\]\u\[$(tput setaf 5)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 1)\]\W\[$(tput setaf 5)\]]\[$(tput sgr0)\]\\$ "

# Read aliases from a separate file
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
if [ -f ~/.bash_cd ]; then
	. ~/.bash_cd
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

