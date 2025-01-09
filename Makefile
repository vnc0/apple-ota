CC = gcc
CFLAGS = -g -O0
LDFLAGS = -llzma

ifeq ($(shell uname), Darwin)  # macOS
    CC = clang
    INCLUDE = -I$(shell brew --prefix xz)/include
    LIBPATH = -L$(shell brew --prefix xz)/lib
endif

all:
	$(CC) $(CFLAGS) $(INCLUDE) -o ota ota.c 02_decompress.c $(LIBPATH) $(LDFLAGS)

clean:
	-rm -f ota
