#!/bin/bash
if [ "$(git remote get-url origin)" != "https://github.umn.edu/to000002/Dotfiles-Ubuntu.git" ]; then
		echo "Please change directory to your dotfiles repository"
		exit 1;
fi
if [ ! -d .gnome-terminal-colors ]; then
	echo "Installing gruvbox theme:"
	git clone https://github.com/metalelf0/gnome-terminal-colors.git .gnome-terminal-colors;
fi

echo -e "6\n1\nyes\n\n" | $PWD/.gnome-terminal-colors/install.sh >> /dev/null
echo -e "\n\nDone!\n"
