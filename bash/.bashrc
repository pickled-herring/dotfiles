## ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Prompt shamelessly stolen from system bashrc
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# Aliases
alias ls='ls --color'
alias c='clear'
