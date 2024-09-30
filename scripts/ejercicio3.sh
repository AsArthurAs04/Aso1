#!/bin/bash

ls /etc > listado_etc.txt

cat listado_etc.txt



echo "Este es el numero de lineas"

wc -l listado_etc.txt

echo "Este es el numero de palabras"

wc -w listado_etc.txt
