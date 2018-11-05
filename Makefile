# Exercise4.3-4.4 Makefile
# Jackson Steele

# Files
SRC := $(wildcard *.c)
OBJ := $(patsubst %.c,%.o,$(SRC))

# Options
CC := gcc
CFLAGS := -O3
LDFLAGS := -L/usr/lib
LDLIBS := -lm
RM := @rm
INCLUDE :=

# Rules
myprog1: myprog1.o
	$(CC) $(LDFLAGS) $(LDLIBS) -o $@ $^
myprog2: myprog2.o
	$(CC) $(LDFLAGS) $(LDLIBS) -o $@ $^
%.o: %.c
	$(CC) $(CFLAGS) $(INCLUDE) -c $<
clean:
	$(RM) $(OBJ) $(EXEC)

# Debugging:
test:
	@echo $(SRC)
	@echo $(OBJ)
	@echo $(INCLUDE)

