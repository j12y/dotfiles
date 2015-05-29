# Set a prompt that shows who@where /path (git status) $

export GIT_PS1_SHOWDIRTYSTATE="1"
export GIT_PS1_SHOWUNTRACKEDFILES="1"
export GIT_PS1_SHOWUPSTREAM="auto"

export PS1="${GREEN}\u@\h${CYAN} \w${YELLOW}\$(__git_ps1)${CYAN} \$${RESET} "

# TODO: conflict
#if [[ -n $SSH_CONNECTION ]]; then
#  export PS1='%m:%3~$(git_info_for_prompt)%# '
#else
#  export PS1='%3~$(git_info_for_prompt)%# '
#fi
