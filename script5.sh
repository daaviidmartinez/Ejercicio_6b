#!/bin/bash
nL=1
tL=$(cat listado.txt | wc -l)
uW=0
uL=0
pW=0
pL=0
while [ $nL -le $tL ];
do
	l=$(head -n $nL listado.txt | tail -n 1 )
	  os=$(echo $l | awk '{print $2}' )
	  p=$(echo $l | awk '{print $3}' )
	if [ $os == "Windows" ]; then
		uW=$(expr $uW + 1 )
		pW=$(expr $pW + $p )
	else
		uL=$(expr $uL + 1 )
		pL=$(expr $pL + $p )
	fi
	nL=$(expr $nL + 1 )
done
echo "Usuarios de Windows: $uW. Procesos: $pW."
echo "Usuarios de Windows: $uL. Procesos: $pL."
