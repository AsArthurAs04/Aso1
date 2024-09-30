#!/bin/bash

if [ -z "$1" ]; then
  echo "Por favor, introduce un directorio como parámetro."
  exit 1
fi

directorio=$1


fecha=$(date +%Y-%m-%d)
archivo_tar="${fecha}_$(basename $directorio).tar.gz"


tar -czf $archivo_tar $directorio


echo "Archivo comprimido creado: $archivo_tar"
