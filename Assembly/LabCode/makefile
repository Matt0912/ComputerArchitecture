CC=gcc
CFLAGS=-pedantic -ansi  -Wall -Wextra -Wfloat-equal -O2

all: gaussElimination
gaussElimination: gaussElimination.o gaussElimination.c
	$(CC) $(CFLAGS) gaussElimination.c -o gaussElimination

clean:
	rm -f gaussElimination gaussElimination.o
run: gaussElimination
	./gaussElimination
