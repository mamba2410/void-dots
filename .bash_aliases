alias python=python3
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias la='ls -Agoh --time-style=+%d-%m'
alias ll='ls -Alh'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias v="vim"
alias suvi="sudo vim"
alias md="mkdir -p"
alias sz="sudo zzz"
alias sZ="sudo ZZZ"

# Git
alias ga="git add"
alias gc="git commit"
alias gp="git push"
alias gs="git status -v"
alias gch="git checkout"
alias gb="git branch"

# Distro-specific
alias sxi="sudo xbps-install"
alias sxr="sudo xbps-remove"

# Lazy cds
alias cdmu="cd ~/user/Mounts/Memstick/University-Work"
alias cddu="cd ~/user/Mounts/Data/Callum/Documents-Clean/University-Work"
alias ..="cd .."
alias ...="cd ../.."
