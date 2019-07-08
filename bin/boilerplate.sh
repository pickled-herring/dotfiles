#!/bin/sh

# A boilerplate for all shell scripts to come

# Debugging and stuffs
set -x			# for debugging
set -e			# exit on error from any subscript
set -o pipefail	# same thing
set -o errtrace	# trap errors in subshells and functions
set -u			# raise an error if there are undefined vars
#set +e			# no exit on error, script must run

# Formatting
BOLD="\033[1m"
DIM="\033[2m"
UNDERLINE="\033[3m"
REVERSE="\033[7m"
HIDDEN="\033[8m"

BLACK="\033[30m"
RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
BLUE="\033[34m"
MANGETA="\033[35m"
CYAN="\033[36m"
GREY="\033[37m"

DARK_GREY="\033[90m"
L_RED="\033[91m"
L_GREEN="\033[92m"
L_YELLOW="\033[93m"
L_BLUE="\033[94m"
L_MANGETA="\033[95m"
L_CYAN="\033[96m"
WHITE="\033[97m"

EXIT="\033[0m"

# Usage
_usage_(){
BOLD="\033[1m"
EXIT="\033[0m"
echo "$BOLD $(basename "$0") [OPTION] ... [FILE] ... $EXIT"

# Description
	cat <<EOF
<++>
EOF

echo "$BOLD Options: $EXIT"
	
	cat <<EOF
	-a <++>
EOF
}

# Input
while getopts 'abc:h?' c; do
		case $c in
				a) echo "a";;
				c) echo "c: $OPTARG";;
				h|?) echo "usage something something";;
esac
done

shift $((OPTIND -1))
# from here on out use $1, $2, ... as normal
# this requires you to take input as so: <something> [OPTIONS] [ARGS]

# End
