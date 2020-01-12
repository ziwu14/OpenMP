#!/bin/bash

make clean
make

PRG=./histo_creative
PIC=uiuc.pgm

sum=0
for i in {1..100}
do
    result=$($PRG $PIC | grep time | awk '{print $3}')
    echo round$i: $result seconds
    sum=$(echo $sum + $result | bc)
done
echo total amount of time for 10 times: $sum seconds
