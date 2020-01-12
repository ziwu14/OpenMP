#----- Modify CC and CFLAGS as appropriate in your environment
CC = gcc
CFLAGS = -O3 -fopenmp -pg

LIB = -lm -lc

UNITFILES = 

SRCS=$(wildcard *.c)
OBJS=$(patsubst %.c,%.o,$(SRCS))

PRG=histo histo_locks histo_atomic histo_creative

#------------ EXECUTABLE FILES ---------------
.PHONY: all clean depend

all : $(PRG)

histo : histo.o $(UNITFILES)
	$(CC) $(CFLAGS) -o $@ $< $(UNITFILES) $(LIB)
histo_locks : histo_locks.o $(UNITFILES)
	$(CC) $(CFLAGS) -o $@ $< $(UNITFILES) $(LIB)
histo_atomic : histo_atomic.o $(UNITFILES)
	$(CC) $(CFLAGS) -o $@ $< $(UNITFILES) $(LIB)
histo_creative : histo_creative.o $(UNITFILES)
	$(CC) $(CFLAGS) -o $@ $< $(UNITFILES) $(LIB)

%.o : %.c
	$(CC) $(CFLAGS) -c $< $(INCLUDE)

clean:
	rm -f $(PRG) *.o *~ 

