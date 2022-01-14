# Read each time a shell session is opened, but not read on login shells unless explicitly stated in .bash_profile

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# Put bash in vi mode, allows normal mode commands 
#set -o vi

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

# Read aliases from a separate file
if [ -f $XDG_CONFIG_HOME/bash/aliases ]; then
    . $XDG_CONFIG_HOME/bash/aliases
fi
if [ -f "$XDG_CONFIG_HOME/bash/cd" ]; then
	. "$XDG_CONFIG_HOME/bash/cd"
fi
if [ -f "$XDG_CONFIG_HOME/bash/git-prompt.sh" ]; then
	. $XDG_CONFIG_HOME/bash/git-prompt.sh
fi

eval "$(dircolors "$XDG_CONFIG_HOME"/dircolors)"

# Customise prompt
# Define colours
PS_BOLD="\[$(tput bold)\]"
PS_NORM="\[$(tput sgr0)\]"
PS_COL1="\[$(tput setaf 1)\]"
PS_COL4="\[$(tput setaf 4)\]"
PS_COL5="\[$(tput setaf 5)\]"
PS_COL12="\[$(tput setaf 12)\]"
PS_COL14="\[$(tput setaf 14)\]"

BASH_GIT_PS=1

export PS1="$PS_BOLD$PS_COL5[$PS_COL12\u$PS_COL5@$PS_COL4\h $PS_COL1\W"
[ "$BASH_GIT_PS" != 0 ] && export PS1="$PS1$PS_COL14\$(__git_ps1 \" %s\")"
export PS1="$PS1$PS_COL5]$PS_NORM\\$ "


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

