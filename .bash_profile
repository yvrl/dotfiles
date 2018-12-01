# .bash_profile

# Get the aliases and functions
[ -f $HOME/.bashrc ] && . $HOME/.bashrc
# exec startx after login
pgrep 'startx' || startx
