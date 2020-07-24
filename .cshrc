umask 000

setenv VISUAL vim
setenv EDITOR vim

setenv PAGER less
setenv MANPAGER less

limit coredumpsize 0

if (-e ~/.aliases) then
  source ~/.aliases
endif

if ($?interactive_shell) then
  echo "yep, interactive"
  if ($?tcsh) then
    echo "yep, tcsh"
    bindkey "^W" backward-delete-word
    bindkey -k up history-search-backward
    bindkey -k down history-search-forward
  endif
  # -v for vim
  #bindkey -v

  set autolist=ambiguous
  set matchbeep=nomatch
  set rmstar
  set noclobber
  set autoexpand
endif

setenv PATH /usr/local/bin:/usr/local/sbin:$PATH
setenv PATH /usr/local/share/python:$PATH

setenv PYTHONSTARTUP ~/.python/startup.py

setenv CLASSPATH ~/work/algorithms/stdlib.jar

