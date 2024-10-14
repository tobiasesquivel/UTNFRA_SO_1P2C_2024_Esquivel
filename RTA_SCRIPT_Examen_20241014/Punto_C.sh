#!/bin/bash

sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores

sudo useradd -m -G p1c2_2024_gAlumno -s /bin/bash p1c2_2024_A1
sudo useradd -m -G p1c2_2024_gAlumno -s /bin/bash p1c2_2024_A2
sudo useradd -m -G p1c2_2024_gAlumno -s /bin/bash p1c2_2024_A3
sudo useradd -m -G p1c2_2024_gProfesores -s /bin/bash p1c2_2024_P1

echo "p1c2_2024_A1:vagrantparcial" | sudo chpasswd
echo "p1c2_2024_A2:vagrantparcial" | sudo chpasswd
echo "p1c2_2024_A3:vagrantparcial" | sudo chpasswd
echo "p1c2_2024_P1:vagrantparcial" | sudo chpasswd

sudo chown -R p1c2_2024_A1:p1c2_2024_A1 /Examenes-UTN/alumno_1
sudo chmod 750 /Examenes-UTN/alumno_1

sudo chown -R p1c2_2024_A2:p1c2_2024_A2 /Examenes-UTN/alumno_2
sudo chmod 740 /Examenes-UTN/alumno_2

sudo chown -R p1c2_2024_A3:p1c2_2024_A3 /Examenes-UTN/alumno_3
sudo chmod 700 /Examenes-UTN/alumno_3

sudo chown -R p1c2_2024_P1:p1c2_2024_gProfesores /Examenes-UTN/profesores
sudo chmod 770 /Examenes-UTN/profesores

echo "usuario y permisos de validacion:" > validar.txt
sudo su - p1c2_2024_A1 -c "whoami && ls -l /Examenes-UTN/alumno_1" >> validar.txt
sudo su - p1c2_2024_A2 -c "whoami && ls -l /Examenes-UTN/alumno_2" >> validar.txt
sudo su - p1c2_2024_A3 -c "whoami && ls -l /Examenes-UTN/alumno_3" >> validar.txt
sudo su - p1c2_2024_P1 -c "whoami && ls -l /Examenes-UTN/profesores" >> validar.txt
