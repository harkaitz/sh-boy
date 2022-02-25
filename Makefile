## Configuration
DESTDIR   =
PREFIX    =/usr/local
PROG_BIN  =$(shell find bin -type f -executable)
MAN1      =$(shell find man -iregex '.*\.1')
## TARGETS
all:
clean:
install: all
    ifneq ($(PROG_BIN),)
	install -d $(DESTDIR)$(PREFIX)/bin
	install -m755 $(PROG_BIN) $(DESTDIR)$(PREFIX)/bin
    endif
    ifneq ($(MAN1),)
	install -d $(DESTDIR)$(PREFIX)/share/man/man1
	install -m644 $(MAN1) $(DESTDIR)$(PREFIX)/share/man/man1
    endif
