#!/bin/bash
find / -type f -perm -o=w -exec ls -l {} \; 2>/dev/null > archivos_peligrosos2.txt

echo "El archivo 'archivos_peligrosos2.txt' ha sido creado con éxito."
