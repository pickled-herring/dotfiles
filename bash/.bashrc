## ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Prompt shamelessly stolen from system bashrc
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# Aliases
# avoid color option for writing scripts
alias ls='ls --color'
alias ll='ls -l'
alias la='ls -al'

alias grep='grep --color'

alias c='\clear'
alias clear='echo "use c"'

