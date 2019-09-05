CC = gcc
FLAGS = -Wall -Werror -g
LIBS = $(shell pkg-config --cflags --libs sdl2)

GCC = $(CC) $(FLAGS)

all: init

init:
	$(GCC) -o init init.c $(LIBS)

clean:
	rm -f init
