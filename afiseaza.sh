#!/bin/sh

BOOK="address-book.txt"

# Afiseaza capetele de tabel
echo "Numarul liniei: Nume ; Nuamr de telefon"

# Afiseaza agenda telefonica cu numar de linii si pauze cu less
nl --number-separator=":    " $BOOK | less

