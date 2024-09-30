#!/bin/bash


if [ -z "$1" ]; then
    echo "Proporciona el nombre de un directorio como parámetro."
    exit 1
fi


if [ ! -d "$1" ]; then
    echo "El parámetro proporcionado no es un directorio válido."
    exit 1
fi


contador=0


for entrada in "$1"/*; do
    if [ -d "$entrada" ]; then
        echo "$entrada es un directorio"
    elif [ -f "$entrada" ]; then
        echo "$entrada es un fichero"
    fi

    ((contador++))
done


echo "Entradas procesadas Totales: $contador"

