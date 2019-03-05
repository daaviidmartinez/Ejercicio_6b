
#!/bin/bash

numLineas=1
totalLineas=$(cat nombres.txt | wc -l)
n=$1

while [ $numLineas -le $totalLineas ]; do
        linea=$(head -n $numLineas nombres.txt | tail -n 1)
        mkdir "$linea"
        for i in `seq 1 1 $n`; do
                mkdir "$linea/personal$i"
        done
        numLineas=$(expr $numLineas + 1)

done
