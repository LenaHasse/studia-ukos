#!/usr/bin/bash
if [ $# -ne 4 ]; then
	echo "Podaj dokładnie 4 parametry"
	exit 1
fi

grep -E "$1|$2|$3" komputery.txt |head -n "$4"
