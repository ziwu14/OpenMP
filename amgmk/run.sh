#!/bin/bash

make clean
make

for i in 1 2 4 8 16 32
do
    echo number of threads = $i
    echo top-down: MATVEC Relax Axpy Total
    OMP_NUM_THREADS=$i ./AMGMk | grep -oP "Wall time.*" | awk '{print $4}'
    echo
done
