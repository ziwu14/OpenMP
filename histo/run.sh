#!/bin/bash

make clean
make

./histo uiuc-large.pgm > result
diff result validation-large.out
./histo_locks uiuc-large.pgm > result
diff result validation-large.out
./histo_atomic uiuc-large.pgm > result
diff result validation-large.out
./histo_creative uiuc-large.pgm > result
diff result validation-large.out
