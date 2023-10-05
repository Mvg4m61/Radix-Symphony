.PHONY: all clean
CC=clang
CPP=clang++
AR=ar
RANLIB=ranlib
CFLAGS= -g -Wall -Wno-unused-function
C11FLAGS= -g -Wall -Wno-unused-function -std=c++11
SRCDIR = ./src
INCLUDEDIR = -I./include -I.
DEPS = 
LIBS = -lm

PROGRAMS = radix-sort \
       		

all: $(PROGRAMS)

%: $(SRCDIR)/%.cpp $(DEPS)
	$(CPP) $(CFLAGS) -o $@ $< $(INCLUDEDIR) $(LIBS)

clean:
	rm -rf $(PROGRAMS) *.dSYM *.o
