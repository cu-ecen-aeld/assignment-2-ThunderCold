CC ?= gcc
CROSS_COMPILE ?=
CFLAGS = -Wall -Wextra

ifeq ($(strip $(CROSS_COMPILE)),)
  PREFIX =
else
  PREFIX = $(CROSS_COMPILE)
endif

all: writer

writer: writer.o
	$(PREFIX)$(CC) $(CFLAGS) -o $@ $^

writer.o: writer.c
	$(PREFIX)$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f writer writer.o

.PHONY: all clean