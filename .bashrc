# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '


# Aliases for shutdown and package management
alias sdn="sudo shutdown -h now"
alias xi="sudo xbps-install"
alias xq="sudo xbps-query"
alias xr="sudo xbps-remove"


# Highlight grep search
alias grep="grep --color=auto" 
alias diff="diff --color=auto"


# Download with youtube-dl
# download audio
alias yta="youtube-dl --extract-audio --audio-format best"
# download video
alias ytv="youtube-dl -f best"

# Git
alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gb="git branch"
alias gpo="git push origin"
