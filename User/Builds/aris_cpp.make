#!/usr/bin/make -f

SHELL = /bin/sh
CC = g++ -O
CDEBUG = -g -DDEBUG
CFLAGS = -Wall -std=c++11
LDFLAGS = -pthread

SRCS = $(wildcard *.cpp)
BINS := $(patsubst %.cpp,%,$(SRCS))

.PHONY: all clean
all: $(BINS)

%: %.cpp
	$(CC) $(CFLAGS) $< $(LDFLAGS) -o $@

debug: CFLAGS := $(CFLAGS) $(CDEBUG)
debug: all

clean:
	rm -fr $(BINS) *.dSYM
