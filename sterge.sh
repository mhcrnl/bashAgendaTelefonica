#!/bin/sh

BOOK="address-book.txt"

# intreaba utilizatorul ce linie sa sterga
echo -n "Ce linie doriti sa stergeti: "
read number

# Redenumiti filaq inainte de stergere
mv $BOOK boo.txt

# Adauga numere de linie si sterge 
nl --number-separator=":" boo.txt | grep -v $number: | awk -F: '{print $2}' | tee $BOOK
