#!/bin/bash
c=0
s=0

  f="precipitaciones.txt"
    for line in `cat $f | awk '{print $2}'`;
  do
	  c=$(expr $c + 1 )
	  s=$(expr $s + $line )
  done
r=$(echo "$s / $c" | bc -l )
echo "La media de precipitaciones es $r"
