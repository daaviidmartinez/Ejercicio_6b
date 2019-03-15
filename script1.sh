#!/bin/bash

f="nombres.txt"
old=$IFS
IFS=' 
'
for line in cat $f`
do
        mkdir $line
        c2=0
        while [ $c2 -le $1 ]
        do
                c2=$(expr $c2 + 1)
                mkdir "$line/Personal$c2"
        done
done
IFS=$old


