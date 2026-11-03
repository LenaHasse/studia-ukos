if [ $#  -ne 4 ] ; then
	echo "Podaj 4 argumenty"
	read imie nazwisko plec wiek
else
	imie=$1
	nazwisko=$2
	plec=$3
	wiek=$4
fi
if [ ! -s "baza.txt" ]; then
	echo -e "Imię\tNazwisko\tPłeć\tWiek" >> baza.txt
fi

echo -e "$imie\t$nazwisko\t$plec\t$wiek" >> baza.txt
