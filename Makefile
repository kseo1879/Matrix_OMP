CC=gcc 
CFLAGS=-Wall -Werror -std=gnu11 -fsanitize=address -fopenmp
TARGET=matrix

.PHONY: clean
.PHONY: test1

all: $(TARGET)

clean:
	rm -f $(TARGET) 
	rm -f *.o

#This will test constructing the map and destroying it.
test:
	time ./matrix 10 10 10 10

test1:
	time ./matrix 32 32 32 32

test2:
	time ./matrix 64 64 64 64

test3:
	time ./matrix 128 128 128 128

test4:
	time ./matrix 256 256 256 256	

test5:
	time ./matrix 512 512 512 512

test6:
	time ./matrix 1024 1024 1024 1024

test7:
	time ./matrix 2048 2048 2048 2048



#compiling

matrix: ./matrix_multi.c
	$(CC) $(CFLAGS) $^ -o $@
