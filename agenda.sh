#!/bin/sh

BOOK="address-book.txt"

exit=0
while [ $exit -ne 1 ]
do
    echo "Ce operatie doriti sa executati?"
    echo -e "adauga, afiseaza, gaseste, sterge, exit: "
    read answer

    if [ "$answer" = "adauga" ]
    then
        ./adauga.sh
    elif [ "$answer" = "afiseaza" ]
    then 
        ./afiseaza.sh
    elif [ "$answer" = "sterge" ]
    then
        ./sterge.sh
    elif [ "$answer" = "gaseste" ]
    then
        ./gaseste.sh
    elif [ "$answer" = "exit" ]
    then
        exit=1
    else
        echo "Comanda dvs nu este in lista!"
    fi
done

exit 0

