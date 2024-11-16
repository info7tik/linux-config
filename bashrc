# Increase the size of the history
HISTSIZE=10000
HISTFILESIZE=10000
# Avoid duplicates history with terminator
HISTCONTROL=ignoredups:erasedups
# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend
