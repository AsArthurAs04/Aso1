#!/bin/bash


if [ -z "$1" ]; then
    echo "Por favor, ingrese un número como parámetro."
    exit 1
fi


numero=$1


if [ "$numero" -lt 2 ]; then
    echo "$numero no es  primo."
    exit 0
fi


for (( i=2; i*i<=$numero; i++ ))
do
    if [ $((numero % i)) -eq 0 ]; then
        echo "$numero no es un número primo."
        exit 0
    fi
done


echo "$numero es primo."


