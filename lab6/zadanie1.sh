#!/usr/bin/bash

if [ $# -ge 5 ]
then
	suma=0
	for i in $@
	do
		if [[ "$i" =~ ^-?[0-9]+$ ]]; then

			(( suma += i ))
		else
			echo "Błąd string"
			exit 1
		fi
	done
	echo "Wynik" $suma
else
	echo "błąd"
fi
