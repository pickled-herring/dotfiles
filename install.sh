#!/bin/sh

# Usage: ./install.sh [OPTIONS]
#         -u  : update this directory with dotfiles from ~

# TODO: this
rsync $(awk '{printf "--exclude "$1" "}' exclude) -avh ./ ~/


# Because this is something that only is needed to configure the color
# schematics of the terminal, copying it over from dotfiles is unecessary.
git clone https://github.com/metalelf0/gnome-terminal-colors.git
