#!/bin/sh

x=0
while [ $x -lt 10 ]
do
	echo "$x \c"
	y=$(($x-1))
	x=$(($x+1))
	while [ $y -ge 0 ]
	do
		y=$(($y-1))
		echo "$y \c"
	done
	echo
done
