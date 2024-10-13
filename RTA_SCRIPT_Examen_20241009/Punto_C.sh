#!/bin/bash

groupadd p1c2_2024_gAlumno
groupadd p1c2_2024_gProfesores

useradd -m -G p1c2_2024_gAlumno -s /bin/bash p1c2_2024_A1
useradd -m -G p1c2_2024_gAlumno -s /bin/bash p1c2_2024_A2
useradd -m -G p1c2_2024_gAlumno -s /bin/bash p1c2_2024_A3
useradd -m -G p1c2_2024_gProfesores -s /bin/bash p1c2_2024_P1

echo "p1c2_2024_A1:vagrant" | chpasswd
echo "p1c2_2024_A2:vagrant" | chpasswd
echo "p1c2_2024_A3:vagrant" | chpasswd
echo "p1c2_2024_P1:vagrant" | chpasswd

chown p1c2_2024_A1:p1c2_2024_A1 /Examenes-UTN/alumno_1
chmod 750 /Examenes-UTN/alumno_1

chown p1c2_2024_A2:p1c2_2024_A2 /Examenes-UTN/alumno_2
chmod 740 /Examenes-UTN/alumno_2

chown p1c2_2024_A3:p1c2_2024_A3 /Examenes-UTN/alumno_3
chmod 700 /Examenes-UTN/alumno_3

chown p1c2_2024_P1:p1c2_2024_gProfesores /Examenes-UTN/profesores
chmod 770 /Examenes-UTN/profesores

echo "usuario y permisos de validacion:" > validar.txt
su - p1c2_2024_A1 -c "whoami && ls -l /Examenes-UTN/alumno_1" >> validar.txt
su - p1c2_2024_A2 -c "whoami && ls -l /Examenes-UTN/alumno_2" >> validar.txt
su - p1c2_2024_A3 -c "whoami && ls -l /Examenes-UTN/alumno_3" >> validar.txt
su - p1c2_2024_P1 -c "whoami && ls -l /Examenes-UTN/profesores" >> validar.txt
