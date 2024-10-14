#!/bin/bash

MemTotal=$(grep MemTotal /proc/meminfo)

ChassisManufacturer=$(sudo dmidecode -t chassis | grep Manufacturer)

echo "MemTotal: $MemTotal" > ../RTA_ARCHIVOS_Examen_20241014/Filtro_Basico.txt
echo "Chassis Manufacturer: $ChassisManufacturer" >> ../RTA_ARCHIVOS_Examen_20241014/Filtro_Basico.txt

echo "Información almacenada en Filtro_Basico.txt correctamente."
