#!/bin/bash
if [ "$1" == "--drop" ]; then
		echo "cloning all CSCI 2041 repos"
		git clone https://github.umn.edu/csci2041-s19/hw2041-s19.git hwrk
		git clone https://github.umn.edu/csci2041-s19/ex2041-s19.git excs
		git clone https://github.umn.edu/csci2041-s19/labs2041-s19.git labs
		git clone https://github.umn.edu/csci2041-s19/repo-to000002.git repo
elif [ "$1" == "--update" ]; then
		git config credential.helper cache
		ls -d */ | xargs -I{} git -C {} pull origin master
else
		echo "Usage: ./droppack.sh [--drop] [--update]"
		echo "		--drop		clone 2041 repos into current directory"
		echo "		--update	run git pull on all repos if they exist"
fi
