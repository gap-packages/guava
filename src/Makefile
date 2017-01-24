# This is the Makefile for Guava binaries

# Set this to the location for Guava binaries
#BINDIR = /usr/lib/gap4r5/pkg/guava3.11/bin

#CC = gcc
#CFLAGS = -O2
FILES = leonconv
SUBDIRS = leon ctjhai

.PHONY: all $(SUBDIRS)

all :	$(FILES)
	cd leon; $(MAKE)

leonconv: leonconv.c
	$(CC) $(CPPFLAGS) $(CFLAGS) $(LDFLAGS) -o leonconv leonconv.c

$(SUBDIRS):
	$(MAKE) --directory=$@

install :
	mkdir -p $(BINDIR)
	cp $(FILES) $(BINDIR)

clean :
	rm -f $(FILES)
	rm -f *.o

distclean: clean
