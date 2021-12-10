# Set Compiler to GCC
# ****************************************************
CC = g++

CFLAGS = -g -Wall
# ======== For build ==========
# ****************************************************
# Targets needed to bring the executable up to date
 
main: main.o Point.o Square.o
	$(CC) $(CFLAGS) -o main main.o Point.o Square.o
 
# The main.o target can be written more simply
 
main.o: main.cpp Point.h Square.h
	$(CC) $(CFLAGS) -c main.cpp
 
Point.o: Point.h
 
Square.o: Square.h Point.h
# ======== For install ========

# PREFIX is environment variable, set it to some default incase it is not set
# ifeq ($(PREFIX),)
# 	PREFIX := /usr/local
# endif

# # DESTDIR is used by debian packaging tools
# install:
# 	install -d $(DESTDIR)$(PREFIX)/lib/
# 	install -m 644 unixlib.a $(DESTDIR)$(PREFIX)/lib/
# 	install -d $(DESTDIR)$(PREFIX)/include/
# 	install -m 644 unixlib.h $(DESTDIR)$(PREFIX)/include/

# ======== For clean ==========

.PHONY: clean
clean: 
		-rm *.o $(objects)