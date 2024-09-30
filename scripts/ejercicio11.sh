#!/bin/bash

if [ "$#" -ne 2 ]; then
  echo "Error: Tiene que indicar DOS parametros"
  exit 1
fi

if [ ! -f "$1" ]; then
  echo "Error: El archivo de origen $1 no existe"
  exit 2
fi

if [ -e "$2" ]; then
  echo "Error: El archivo o directorio $2 ya existe"
  exit 3
fi

cp "$1" "$2"

if [ "$?" -eq 0 ]; then
  echo "El archivo  $1 se ha copiado correctamente como $2"
else
  echo "Error: No Se ha copiado el archivo"
  exit 4
fi
