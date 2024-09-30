#!/bin/bash

ARCHIVO="lista.txt"


menu() {
    echo "AGENDA"
    echo "1. Añadir"
    echo "2. Buscar"
    echo "3. Listar"
    echo "4. Ordenar"
    echo "5. Borrar"
    echo "6. Salir"
    echo -n "Selecciona una opción: "
}


anadir() {
    echo "Añadir un registro"
    read -p "Nombre: " nombre
    read -p "Dirección: " direccion
    read -p "Teléfono: " telefono
    echo "$nombre, $direccion, $telefono" >> $ARCHIVO
    echo "Registro añadido."
}


buscar() {
    echo "Buscar entradas"
    read -p "Introduce el término de búsqueda: " termino
    grep -i "$termino" $ARCHIVO || echo "No se encontraron coincidencias."
}


listar() {
    echo "Listado de contactos:"
    if [ -f $ARCHIVO ]; then
        cat $ARCHIVO
    else
        echo "El archivo no existe."
    fi
}


ordenar() {
    echo "Ordenar registros alfabéticamente por nombre"
    sort -o $ARCHIVO $ARCHIVO
    echo "Registros ordenados."
}


borrar() {
    echo "Borrar el archivo"
    if [ -f $ARCHIVO ]; then
        rm $ARCHIVO
        echo "Archivo borrado."
    else
        echo "El archivo no existe."
    fi
}


while true; do
    menu
    read opcion
    case $opcion in
        1)
            anadir
            ;;
        2)
            buscar
            ;;
        3)
            listar
            ;;
        4)
            ordenar
            ;;
        5)
            borrar
            ;;
        6)
            echo "Saliendo del programa."
            break
            ;;
        *)
            echo "Opción no válida, intenta de nuevo."
            ;;
    esac
done
