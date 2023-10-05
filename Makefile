.PHONY: all clean
CC=clang
CPP=clang++
AR=ar
RANLIB=ranlib
CFLAGS= -g -Wall -Wno-unused-function
C11FLAGS= -g -Wall -Wno-unused-function -std=c++11
DEPS = 
LIBS = -lm

PROGRAMS = radix-sort \
       		

all: $(PROGRAMS)

%: radix-sort.cpp $(DEPS)
	$(CPP) $(CFLAGS) -o $@ $< $(INCLUDEDIR) $(LIBS)

clean:
	rm -rf $(PROGRAMS) *.dSYM *.o
