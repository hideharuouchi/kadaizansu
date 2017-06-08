#!/bin/bash

a=$1
b=$2

if [ $a -lt $b ]; then
	temp=$b
	b=$a
	a=$temp
fi

r=`expr $a % $b`

while [ $r != "0" ]
do
	a=$b
	b=$r
	r=`expr $a % $b`
done

echo $b
