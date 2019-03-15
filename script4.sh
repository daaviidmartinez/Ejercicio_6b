#!/bin/bash
f="numeros.txt"
for line in `cat $f`;
do
	if [ $(expr $line % 2 ) -eq 0 ]; then
		  echo "$line es par"
		c1=$(expr $c1 + 1 )
	else
	  	echo "$line es impar"
		c2=$(expr $c2 + 1 )
	fi
done
echo "Hay $c1 numeros pares y $c2 numeros impares"
