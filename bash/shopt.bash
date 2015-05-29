# Autocorrect typos in path names
shopt -s cdspell

# Case-insensitive globbing
shopt -s nocaseglob

# Linux specific
case "$OSTYPE" in
  linux*)
    shopt -s checkwinsize
    shopt -u direxpand
esac
