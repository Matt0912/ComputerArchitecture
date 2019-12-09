CC=gcc
CFLAGS=-pedantic -ansi  -Wall -Wextra -Wfloat-equal -O2

all: code3
code3: code3.o code3.c
	$(CC) $(CFLAGS) code3.c -o code3

clean:
	rm -f code3 code3.o
run: code3
	./code3
