#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Uso: $0 <número>"
  exit 1
fi

if ! [[ $1 =~ ^[0-9]+$ ]]; then
  echo "Por favor, introduce un número entero válido."
  exit 1
fi


n=$1


for i in {1..10}; do
  echo "$i x $n = $((i * n))"
done
