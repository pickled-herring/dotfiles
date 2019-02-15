#!/usr/bin/env bash
#Usage: ./converter.sh <base> <number>
	#<base>: the base of the input number
	#<number>: the number you want to convert to literally everything else

echo -n "bin "
echo "obase=2;ibase=$1;$2" | bc
echo -n -e "oct "
echo "obase=8;ibase=$1;$2" | bc
echo -n -e "dec "
declare -i dec
dec=$(echo "obase=10;ibase=$1;$2" | bc)
echo $dec
echo -n -e "hex "
hex=$(echo "obase=16;ibase=$1;$2" | bc)
echo $hex
if (( dec > 32 && dec < 127 )); then
		echo -n -e "ascii "
		echo -e "\x$hex"
fi
if (( dec > 127 && dec < 256 )); then
		echo -n "8bit uint: "
		(( dec = dec - 256 ))
		echo $dec
fi
