#!/bin/bash

# A simple dotfiles manager which I use for bootstrapping my dotfiles to
# any computer as long as it has bash.
if [[ $1 == "" ]]; then
		echo "Usage: ./install.sh <module>"
		echo "see README.md for more"
		exit 4;
fi

if [[ "$REPO" == "" ]]; then
		echo "\$REPO not found, using $HOME/repo instead"
		REPO=$HOME/repo
fi

read -d '' LINKS << EOF
bash bash/.bash_profile $HOME
bash bash/.bashrc $HOME
bash bash/.profile $HOME

bin bin $HOME
repo repo $HOME

courses courses/2021/converter.sh $HOME/2021
courses courses/2041/2041pack.sh $HOME/2041

vim vim/.vimrc $HOME

zathura zathura/zathurarc $HOME/.config/zathura

news news/config $HOME/.newsbeuter/
EOF

if [[ "$1" != "all" && $(echo "$LINKS" | grep $1) == "" ]]; then
		echo "$1 not an installable module"
		exit 1;
fi

# if $1 is all then grep "" to catch everything
if [[ "$1" == "all" ]]; then
		pattern="^"
else
		pattern="^$1"
fi

echo "$LINKS" | sed "/^$/d" | grep "$pattern" |\
		awk '{system("\
	if [ ! -d "$3" ]; then\
			mkdir -p "$3";\
	else\
			ln -s -f $PWD/"$2" "$3";\
	fi\
")}'
