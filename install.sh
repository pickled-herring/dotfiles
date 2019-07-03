#!/bin/sh

# A simple dotfiles manager which I use for bootstrapping my dotfiles to
# any computer as long as it has sh.
set -x

if [[ $1 == "" ]]; then
		echo "Usage: ./install.sh <module>"
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

courses courses/2021/converter.sh $HOME/2021
courses courses/2041/2041pack.sh $HOME/2041

repo repo/gnome-terminal-colors $REPO
repo repo/gruvbox $REPO

vim vim/.vimrc $HOME

zathura zathura/zathurarc $HOME/.config/zathura
EOF

if [[ $(echo "$LINKS" | grep $1) == "" ]]; then
		echo "$1 not an installable module"
		exit 1;
fi

echo "$LINKS" | sed "/^$/d" | grep "^$1" |\
		awk '{system("\
	if [[ ! -d "$3" ]]; then\
			echo \""$3" not found, Aborting\"\
			exit 3;\
	else\
			ln -s $PWD/"$2" "$3";\
	fi\
")}'
