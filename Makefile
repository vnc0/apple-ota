CC = gcc
CFLAGS = -g -O0
LDFLAGS = -llzma

all:
	$(CC) $(CFLAGS) -o ota ota.c 02_decompress.c $(LDFLAGS)

clean:
	-rm ota