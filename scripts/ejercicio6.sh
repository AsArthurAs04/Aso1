#!/bin/bash

echo "Introduce una palabra"
read palabra

echo $palabra >>lista.txt

echo "La palabra se ha añadido al archivo lista.txt"
