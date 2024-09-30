#!/bin/bash

echo "Dame el primer numero"
read num1

echo "Dame el segundo numero"
read num2


media=$(echo "scale=2; ($num1 + $num2) / 2" | bc)

echo "El resultado es $media"
