#!/bin/sh

# Agenda telefonica in bash

BOOK="new-phone.txt"

Adauga(){
    echo "Aceasta este Agenda Telefonica"
    echo -n "Introduceti numele persoanei: "
    read nume

    echo -n "Intoduceti numarul de telefon: "
    read numar_telefon

    echo "Doriti salvarea datelor introduse: "
    echo -e "$nume ; $numar_telefon \n"
    echo -n "y/n: "
    read raspuns

    if [ "$raspuns" == "y" ]
    then 
        #Scrie valorile in fila
        echo "$nume ; $numar_telefon" >> $BOOK
    else
        #Mesajul afisat utilizatorului
        echo "$nume ; $phone Nu a fost scris in $BOOK"
    fi
}

Afiseaza(){
    echo "Numarul liniei: Nume ; Numar de telefon"
    #Afiseaza numele si nr tel cu numar de linie
    nl --number-separator=":     " $BOOK | less
}

Sterge(){
    echo "Ce linie din agenda doriti sa stergeti: "
    read numar
    #Redenumiti fila inainte de stergere"
    mv $BOOK book.txt
    #Adauga numere de linie si sterge
    nl --number-separator=":" book.txt | grep -v $numar_telefon: | awk -F: '{print $2}' | tee $BOOK
}

Gaseste(){
    echo -n "Ce persoana sau numar de telefon cautati?: "
    read find

    echo "Nume ; Numar de telefon"
    grep -i $find $BOOK
}

Agenda(){
    exit=0
    while [ $exit -ne 1 ]
    do
        echo "Ce operatie doriti sa executati?"
        echo -e "adauga, afiseaza, gaseste, sterge, exit: "
        read raspuns

        if [ "$raspuns" = "adauga" ]
        then
            Adauga
        elif [ "$raspuns" = "afiseaza" ]
        then
            Afiseaza
        elif [ "$raspuns" = "sterge" ]
        then 
            Sterge
        elif [ "$raspuns" = "gaseste" ]
        then
            Gaseste
        elif [ "$raspuns" = "exit" ]
        then 
            exit=1
        else
            echo "Comanda dvs nu este in lista!"
        fi

    done
}

#De aici incepe executia scriptului
Agenda
