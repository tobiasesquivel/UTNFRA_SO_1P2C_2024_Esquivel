#!/bin/bash

IP_PUBLICA=$(curl -s ifconfig.me)

USUARIO=$(whoami)

HASH_USUARIO=$(git rev-parse HEAD)

echo "Mi IP Publica es: $IP_PUBLICA" > "../RTA_ARCHIVOS_Examen_20241014/Filtro_Avanzado.txt"
echo "Mi usuario es: $USUARIO" >> "../RTA_ARCHIVOS_Examen_20241014/Filtro_Avanzado.txt"
echo "El Hash de mi Usuario es: $HASH_USUARIO" >> "../RTA_ARCHIVOS_Examen_20241014/Filtro_Avanzado.txt"
echo "La URL de mi repositorio es: git@github.com:tobiasesquivel/UTNFRA_SO_1P2C_2024_Esquivel.git" >> "../RTA_ARCHIVOS_Examen_20241014/Filtro_Avanzado.txt"

echo "Informacion almacenada en $DIR_NAME/Filtro_Avanzado.txt correctamente"
