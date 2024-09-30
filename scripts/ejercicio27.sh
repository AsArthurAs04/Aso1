#!/bin/bash

existe() {
    local fichero="$1"

       if [ -f "$fichero" ]; then
        echo "El fichero '$fichero' existe."


        chmod u+x,go-x "$fichero"

        echo "Permisos cambiados: el fichero ahora es ejecutable solo para el propietario."
    else
        echo "El fichero '$fichero' no existe."
    fi
}


existe "$1"
