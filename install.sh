#!/usr/bin/env bash
rsync \
		--exclude ".git/"\
		--exclude "install.sh"\
		-avh . ~;
git clone https://github.com/metalelf0/gnome-terminal-colors.git
# note: you may have to copy .vim/bundle/vim-colors -> .vim/colors
