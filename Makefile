#
# Makefile
#

CERTSDIR = /usr/share/ca-certificates/evrotrust

all:

clean:

install:
	mkdir -p $(DESTDIR)/$(CERTSDIR); \
	for p in *.crt; do \
	 install -D -m 644 $$p $(DESTDIR)/$(CERTSDIR)/$$p ; \
	done
