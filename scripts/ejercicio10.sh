#!/bin/bash

read -p "Introduce el numero:   " num

if [ $((num % 2)) -eq 0 ]; then
  echo "El número $numero es par."
else
  echo "El número $numero es impar."
fi
