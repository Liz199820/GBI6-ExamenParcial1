<<<<<<< HEAD
#Localización de los datos

cd Documents/GBI6-ExamenParcial1/data

#1. ¿Cuántas veces  se registraron los niveles de los individuos 3 y 27?

#Archivo estructura

head -n 10 Gesquiere2011_data.csv

#maleIDGCT 3

$ cut -f 1 Gesquiere2011_data.csv | grep -w -c 3

#maleIDGCT 27

$ cut -f 1 Gesquiere2011_data.csv | grep -w -c 27

#2. Script con el archivo Gesquiere2011 y el ID de los individuos 
#para que muestre el # de registros para la identificación

#Individuo elegido maleIDGCT 89

$ cut -f 1 Gesquiere2011_data.csv | grep -w -c 89

#Escribir un script que muestre el número de veces que cada 
#individuo fue muestreado

#Escoger maleIDGCT sin repeticiones

tail -n +2 Gesquiere2011_data.csv | cut -f 1 | sort -n | uniq

maleIDGCT=$(tail -n +2 Gesquiere2011_data.csv | cut -f 1 | sort -n | uniq)
echo $maleID
for a in $maleID
do
muestra=$(cut -f 1 Gesquiere2011_data.csv | grep -w -c $a)
echo "maleIDGCT:" $a "muestras:" $muestra
done
=======
#Localización de los datos

cd Documents/GBI6-ExamenParcial1/data

#1. ¿Cuántas veces  se registraron los niveles de los individuos 3 y 27?

#Archivo estructura

head -n 10 Gesquiere2011_data.csv

#maleIDGCT 3

$ cut -f 1 Gesquiere2011_data.csv | grep -w -c 3

#maleIDGCT 27

$ cut -f 1 Gesquiere2011_data.csv | grep -w -c 27

#2. Script con el archivo Gesquiere2011 y el ID de los individuos
#para que muestre el # de registros para la identificación

#Individuo elegido maleIDGCT 89

$ cut -f 1 Gesquiere2011_data.csv | grep -w -c 89
#Escribir un script que muestre el número de veces que cada
#individuo fue muestreado

#Escoger maleIDGCT sin repeticiones

tail -n +2 Gesquiere2011_data.csv | cut -f 1 | sort -n | uniq

maleIDGCT=$(tail -n +2 Gesquiere2011_data.csv | cut -f 1 | sort -n | uniq)
echo $maleID
for a in $maleID
do
muestra=$(cut -f 1 Gesquiere2011_data.csv | grep -w -c $a)
echo "maleIDGCT:" $a "muestras:" $muestra
done
>>>>>>> f01c11d7a1e24ac2748d76f117bbf73cf2a94e3c
