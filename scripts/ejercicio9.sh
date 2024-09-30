#!/bin/bash

read -p "Introduce el primer numero:	" num1
read -p "Introduce el segundo numero:	" num2

echo "Selecciona una opcion
	1.Suma
	2.Resta
	3.Multi
	4.Division"
read -p "Elige:" opcion

case $opcion in

	1)
		suma=$(echo "$num1 + $num2" | bc)
		echo "$num1 + $num2 = $suma"
		;;
	2)
		resta=$(echo "$num1 - $num2" | bc)
		echo "$num1 - $num2 = $resta"
		;;
	3)
		mult=$(echo "$num1 * $num2" | bc)
		echo "$num1 * $num2 = $mult"
		;;
	4)
		div=$(echo "$num1 / $num2" | bc)
		echo "$num1 / $num2 = $div"
		;;
	*)
		echo "Parametro no valido"

esac
