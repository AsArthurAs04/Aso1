#!/bin/bash


if [ -z "$1" ]; then
    echo "Proporciona el nombre de un directorio como parámetro."
    exit 1
fi


if [ ! -d "$1" ]; then
    echo "El parámetro proporcionado no es un directorio válido."
    exit 1
fi


contador_ficheros=0
contador_directorios=0


for entrada in "$1"/*; do
    if [ -f "$entrada" ]; then
        ((contador_ficheros++))
    elif [ -d "$entrada" ]; then
        ((contador_directorios++))
    fi
done


echo "El directorio '$1' contiene:"
echo "$contador_ficheros ficheros"
echo "$contador_directorios subdirectorios"
