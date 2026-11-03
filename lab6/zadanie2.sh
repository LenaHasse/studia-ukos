#!/usr/bin/bash
if [ $# -eq 1 ]; then
	for i in ~/*.$@
	do
		nowaNazwa="${i%/*}/copy${i##*/}"
		echo $nowaNazwa $i
		cp "$i" "$nowaNazwa"
		mv  "$nowaNazwa"  /mnt/c/Users/morel/Documents/copied/
	done

elif [ $# -eq 0 ]; then
	echo "brak argumentów"


else
	for i in "$@"
        do
		nowaNazwa="$HOME/copy$i"
		echo $nowaNazwa $i "test 2"
                cp "$HOME/$i" "$nowaNazwa"
                mv  "$nowaNazwa"  /mnt/c/Users/morel/Documents/copied/
	done

fi
