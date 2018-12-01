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



# make alias for youtube dl with all the options
