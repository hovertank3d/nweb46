CC := gcc
CFLAGS := -O2 -Wall -Werror -pedantic -Wextra
LDFLAGS := 

OBJS := \
	nweb46.o

all: nweb46

nweb46: $(OBJS)
	$(CC) $(LDFLAGS) $(CFLAGS) $(OBJS) -o $@

%.o: %.c
	$(CC) $(CFLAGS) $< -c $@