#!/bin/sh
# This file is to use for when you are on a computer of which you are not
# of the sudo group. If you do have su privileges, use stow

# The usage of this shell script is the same as basic stow

if [[ ! -d $1 ]]; then
		echo "$1 is not a directory"
		exit 1;
fi

ROOT=$PWD/$1
TARGET=$HOME
DIR=$ROOT
# stuff happening
cd $ROOT
ls -RAp | grep -v total | grep -v '^$' |\
		while read i
		do
				if [[ $i =~ : ]]; then
						i=$( echo $i | sed s'/.$//' )
						TARGET=$HOME/$i
						DIR=$ROOT/$i
				elif [[ $i =~ / ]]; then
						echo "ignoring: $i is a directory"
				else
						if [[ -f $TARGET/$i ]]; then
								mv $TARGET/$i $TARGET/$i.bak
						fi
						ln -s -t $TARGET $DIR/$i
						echo "ln -s -t $TARGET $DIR/$i"
				fi
		done
