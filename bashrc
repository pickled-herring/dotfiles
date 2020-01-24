## ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Prompt shamelessly stolen from system bashrc
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# Set to vi mode, set jj as escape
set -o vi
bind '"jj":"\e"'

# Colors for tty shell
colorfile=.gruvbox
if [ "$TERM" = "linux" ]; then
	source $colorfile
	printf "\e]P0$black" #black
	printf "\e]P8$dgrey" #darkgrey
	printf "\e]P1$red" #darkred
	printf "\e]P9$lred" #red
	printf "\e]P2$green" #darkgreen
	printf "\e]PA$lgreen" #green
	printf "\e]P3$yellow" #brown
	printf "\e]PB$lyellow" #yellow
	printf "\e]P4$blue" #darkblue
	printf "\e]PC$lblue" #blue
	printf "\e]P5$magenta" #darkmagenta
	printf "\e]PD$lmagenta" #magenta
	printf "\e]P6$cyan" #darkcyan
	printf "\e]PE$lcyan" #cyan
	printf "\e]P7$grey" #lightgrey
	printf "\e]PF$white" #white
	clear #for background artifacting
fi

# Aliases
alias ls='ls --color'
alias ll='ls -l'
alias la='ls -al'
alias rm='rm -i'

alias grep='grep --color'

alias c='\clear'

# Less Colors for Man Pages
export LESS_TERMCAP_mb=$'\e[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\e[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\e[0m'           # end mode
export LESS_TERMCAP_se=$'\e[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\e[01;32m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\e[0m'           # end underline
export LESS_TERMCAP_us=$'\e[04;38;5;146m' # begin underline

# Small little reminder script
if [ -f remind ]; then
	cat remind
fi
