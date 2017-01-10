#!/bin/bash

cow="cowsay"
today=$(date +"%A")
case "$today" in
	Friday)
		cow="cowsay -d"
		;;
	Monday)
		cow="cowthink"
		;;
	Tuesday)
		cow="cowsay -f moose"
		;;
	Thursday)
		cow="cowsay -f bunny"
		;;
esac
#if [ $today == "Friday" ]; then
#	cow_eyes="xx"
#fi
#if [ $today == "Monday" ]; then
#	cow="cowthink"
#fi

fortune testing | $cow

# PS1 is the variable that holds the bash prompt
export PS1="\[\e[33m\]\W\[\e[m\]\[\e[33m\] >\[\e[m\] "
