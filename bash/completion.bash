# Some bash settings specific to tab-completion

case "${OSTYPE}" in
  linux*)
    shopt -s globstar
    ;;
  darwin*)
    # Use bash completion
    if [[ -f $(brew --prefix)/etc/bash_completion ]]; then
      source $(brew --prefix)/etc/bash_completion
    fi

    # On a Mac, we need to enable tab-completion for SSH hosts manually.
    # Credit to: https://gist.github.com/aliang/1024466

    _complete_ssh_hosts ()
    {
            COMPREPLY=()
            cur="${COMP_WORDS[COMP_CWORD]}"
            comp_ssh_hosts=`cat ~/.ssh/known_hosts | \
                            cut -f 1 -d ' ' | \
                            sed -e s/,.*//g | \
                            grep -v ^# | \
                            uniq | \
                            grep -v "\[" ;
                            cat ~/.ssh/config | \
                            grep "^Host " | \
                            awk '{print $2}'
                            `
            COMPREPLY=( $(compgen -W "${comp_ssh_hosts}" -- $cur))
            return 0
    }
    complete -F _complete_ssh_hosts ssh
    ;;
esac
