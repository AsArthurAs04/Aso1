#!/bin/bash

numero_adivinar=$(( RANDOM % 100 + 1 ))

echo " ********************************************************************"
echo " *             ¡Bienvenido al juego de adivinar el número!          *"
echo " *             Tienes que adivinar un número entre 1 y 100.         *"
echo " *    Introduce el numero 0 si no te ves capaz de adivinarlo        *"
echo " ********************************************************************"

while true; do

    read -p "Introduce un número: " numero_usuario

if [ "$numero_usuario" -eq 0 ]; then
        echo "Te has rendido enserio?. El número era $numero_adivinar."
        break
    fi
if [ "$numero_usuario" -lt 1 ] || [ "$numero_usuario" -gt 100 ]; then
        echo "Por favor, introduce un número entre 1 y 100."
        continue
    fi

if [ "$numero_usuario" -lt "$numero_adivinar" ]; then
        echo "El número es mas grande."
    elif [ "$numero_usuario" -gt "$numero_adivinar" ]; then
        echo "El número es mas pequeño."
    else
        echo "¡Enhorabuena jefe! Has adivinado el número."
        break
    fi
done
