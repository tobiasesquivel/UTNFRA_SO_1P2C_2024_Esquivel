#!/bin/bash
sudo fdisk /dev/sde << EOF
n
p


+1G
n
p


+1G
n
p


+1G
n
e


n

+1G
n

+1G
n

+1G
n

+1G
n

+1G
n

+1G
n


w
EOF

sudo mkfs -t ext4 /dev/sde1

sudo mkfs -t ext4 /dev/sde2

sudo mkfs -t ext4 /dev/sde3

sudo mkfs -t ext4 /dev/sde5

sudo mkfs -t ext4 /dev/sde6

sudo mkfs -t ext4 /dev/sde7

sudo mkfs -t ext4 /dev/sde8

sudo mkfs -t ext4 /dev/sde9

sudo mkfs -t ext4 /dev/sde10

sudo mkfs -t ext4 /dev/sde11

sudo mount /dev/sde1 /Examenes_UTN/alumno_1/parcial_1

sudo mount /dev/sde2 /Examenes_UTN/alumno_1/parcial_2

sudo mount /dev/sde3 /Examenes_UTN/alumno_1/parcial_3

sudo mount /dev/sde5 /Examenes_UTN/alumno_2/parcial_1

sudo mount /dev/sde6 /Examenes_UTN/alumno_2/parcial_2

sudo mount /dev/sde7 /Examenes_UTN/alumno_2/parcial_3

sudo mount /dev/sde8 /Examenes_UTN/alumno_3/parcial_1

sudo mount /dev/sde9 /Examenes_UTN/alumno_3/parcial_2

sudo mount /dev/sde10 /Examenes_UTN/alumno_3/parcial_3

sudo mount /dev/sde11 /Examenes_UTN/profesores

echo "/dev/sde1 /Examenes_UTN/alumno_1/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab

echo "/dev/sde2 /Examenes_UTN/alumno_1/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab

echo "/dev/sde3 /Examenes_UTN/alumno_1/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab

echo "/dev/sde5 /Examenes_UTN/alumno_2/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab

echo "/dev/sde6 /Examenes_UTN/alumno_2/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab

echo "/dev/sde7 /Examenes_UTN/alumno_2/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab

echo "/dev/sde8 /Examenes_UTN/alumno_3/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab

echo "/dev/sde9 /Examenes_UTN/alumno_3/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab

echo "/dev/sde10 /Examenes_UTN/alumno_3/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab

echo "/dev/sde11 /Examenes_UTN/profesores ext4 defaults 0 0" | sudo tee -a /etc/fstab

sudo mount -a
