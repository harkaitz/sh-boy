DESTDIR     =
PREFIX      =/usr/local

all:
clean:
install:
## -- manpages --
ifneq ($(PREFIX),)
MAN_1=./man/boy.1 
install: install-man1
install-man1: $(MAN_1)
	mkdir -p $(DESTDIR)$(PREFIX)/share/man/man1
	cp $(MAN_1) $(DESTDIR)$(PREFIX)/share/man/man1
endif
## -- manpages --
## -- license --
ifneq ($(PREFIX),)
install: install-license
install-license: LICENSE
	mkdir -p $(DESTDIR)$(PREFIX)/share/doc/sh-boy
	cp LICENSE $(DESTDIR)$(PREFIX)/share/doc/sh-boy
endif
## -- license --
## -- install-sh --
install: install-sh
install-sh:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp bin/boy  $(DESTDIR)$(PREFIX)/bin
## -- install-sh --
