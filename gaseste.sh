#!/bin/sh

BOOK="address-book.txt"

echo -n "Ce persoana sau numar cautati?"
read find

# Afiseaza titlul inaintea cautarii
echo "Nume ; Numar de telefon"
grep -i $find $BOOK

