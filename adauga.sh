#!/bin/sh

# numele filei in care se salveaza contactele
BOOK="address-book.txt"

# Intreaba utilizatorul pentru numele contactului
echo -n "Numele persoanei: "
read name

# intreaba utilizatorul despre numarul de telefon
echo -n "Numarul de telefon: "
read phone

# afiseaza raspunsurile si cere confirmarea 
echo "Vreti salvarea datelor introduse: "
echo -e "$name ; $phone \n"
echo -n "y/n: "
read answer

if [ "$answer" == "y" ]
then 
    # Scrie valorile in fila
    echo "$name ; $phone" >> $BOOK
else
    # Mesajul afisat utilizatarului
    echo "$name ; $phone NU a fost scris in $BOOK"
fi

exit 0 
