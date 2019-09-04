#!/bin/bash

# A simple dotfiles manager which I use for bootstrapping my dotfiles to
# any computer as long as it has bash.
if [[ $1 == "" ]]; then
		echo "Usage: ./install.sh <module>"
		echo "see README.md for more"
		exit 4;
fi

read -d '' LINKS << EOF
bash bash/.bash_profile $HOME
bash bash/.bashrc $HOME
bash bash/.profile $HOME

bin bin/* $HOME/bin
repo repo/todo $HOME/repo
repo repo/spark $HOME/repo

templates templates $HOME

tmux tmux/.tmux.conf $HOME

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
		awk '{print"\
set -x;\
if [ ! -d "$3" ]; then\
	mkdir -p "$3";\
fi;\
	ln -s -f -t "$3" $PWD/"$2" ;\
"}' | bash
