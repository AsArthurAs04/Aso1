
#!/bin/bash

suma=0

while true; do
    echo -n "Introduce un número (0 para terminar): "
    read numero

    if [ "$numero" -eq 0 ]; then
        break
    fi

    suma=$((suma + numero))
    echo "Suma actual: $suma"
done

echo "Suma final: $suma"
