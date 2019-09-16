CC = gcc
FLAGS = -Wall -Werror -g
LDFLAGS =
LIBS =

OBJ = main.o

all: main
clean:
	rm -f main
main: $(OBJ)
	$(CC) $(CFLAGS) $(LDFLAGS) $(OBJ) -o main $(LIBS)
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@
