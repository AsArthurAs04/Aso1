#!/bin/bash

read -p "Introduzca el primer numero:  "	 num1

read -p "Intrduzca el segundo numero:  "	 num2

if [ "$num1" -gt "$num2" ]; then
	echo "El numero $num1 es mayor que $num2"
 elif [ "$num1" -lt "$num2" ]; then
	echo "El numero $num1 es menor que $num2"
 else
	echo "Los dos numeros son iguales"
fi
