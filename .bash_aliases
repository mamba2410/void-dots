alias python='python3'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias la='ls -Agoh --time-style=+%y-%m-%d'
alias ll='ls -Alh --time-style=long-iso'

alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias v="vim" # Typically use nvim, but also works if use normal vim
alias suvi="sudo vim"
alias md="mkdir -p"

# Git
alias ga="git add"
alias gc="git commit"
alias gp="git pull"
alias gs="git status"
alias gch="git checkout"
alias gb="git branch"
alias gl="git log"
alias gr="git remote"

# Distro-specific
alias sxi="sudo xbps-install"
alias sxr="sudo xbps-remove"
alias xq="xbps-query"
alias sxp="sudo xbps-pkgdb"
alias sxa="sudo xbps-alternatives"

alias sz="sudo zzz"
alias sZ="sudo ZZZ"

# Lazy cds
alias ..="cd .."
alias ...="cd ../.."

