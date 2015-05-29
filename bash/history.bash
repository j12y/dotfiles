# Don't put duplicate lines or lines starting with a space in the history.
HISTCONTROL=ignoreboth

# Keep a good record of things
HISTSIZE=10000
SAVEHIST=10000

# Keep history between sessions by appending
shopt -s histappend

# Smart history search
if [[ $- == *i* ]]
then
    bind '"\e[B": history-search-forward'
    bind '"\e[A": history-search-backward'
fi
