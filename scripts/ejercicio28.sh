#!/bin/bash


obtener_informacion_red() {
    interfaz=$(ip route | grep '^default' | awk '{print $5}')
    ip=$(ip -f inet addr show "$interfaz" | grep -oP 'inet \K[\d.]+')
    mascara=$(ip -f inet addr show "$interfaz" | grep -oP '/\K[\d]+')
    red=$(ip route | grep "$interfaz" | grep -oP 'src \K[\d.]+')
    broadcast=$(ip -f inet addr show "$interfaz" | grep -oP 'brd \K[\d.]+')

    echo "Interfaz: $interfaz"
    echo "IP: $ip"
    echo "Máscara de subred: /$mascara"
    echo "Red: $red"
    echo "Broadcast: $broadcast"
}


comprobar_ip() {
    ip="$1"
    if ping -c 1 -W 1 "$ip" > /dev/null 2>&1; then
        echo "$ip en uso"
    else
        echo "$ip libre"
    fi
}


generar_informe() {
    obtener_informacion_red > informe_ip.txt

    red_base=$(echo "$ip" | cut -d"." -f1-3)  # Base de la red
    echo "Listado de IPs en la red: " >> informe_ip.txt

    for i in {1..254}; do
        ip="$red_base.$i"
        resultado=$(comprobar_ip "$ip")
        echo "$resultado" >> informe_ip.txt
    done

    echo "Informe generado en informe_ip.txt"
}


generar_informe
