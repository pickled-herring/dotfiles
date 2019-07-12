#!/bin/sh
_usage_() {
bold="\033[1m"
reset="\033[0m"
echo "$(cat <<EOF
$bold $(basename "$0") [OPTION]... [FILE]...$reset

	This is a script template.Edit this description to print help to users.

$bold Options:$reset
	-u, --usernameUsername for script

		$(basename "$0") --username 'USERNAME'

	-p, --passwordUser password

		$(basename "$0") --password 'PASSWORD'

	-l, --log Print log to file with all log levels
	-n, --dryrunNon-destructive. Makes no permanent changes.
	-q, --quiet Quiet (no output)
	-v, --verbose Output more information. (Items echoed to 'verbose')
	-h, --helpDisplay this help and exit
	--source-only Bypass main script functionality to allow unit tests of functions
	--force Skip all user interaction.Implied 'Yes' to all actions.
EOF
)" | sed "s/\033//g;s/\\\\//g"
}
