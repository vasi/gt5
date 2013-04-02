TARGET  = gt5
VERSION = 1.4.0
PREFIX  ?= /usr/local
MAN     ?= $(PREFIX)/share/man/man1
SHARE   ?= $(PREFIX)/share/$(TARGET)-$(VERSION)

build:
	@echo nothing to build, gt5 is a shell-script
	@echo run 'make [un]install to [un]install'

install:
	install -o root -g root -m 755 -d $(DESTDIR)$(MAN)
	install -o root -g root -m 755 -d $(DESTDIR)$(PREFIX)/bin
	install -o root -g root -m 755 $(TARGET).1 $(DESTDIR)$(MAN)
	install -o root -g root -m 755 $(TARGET) $(DESTDIR)$(PREFIX)/bin

install_doc:
	install -o root -g root -m 755 -d $(DESTDIR)$(SHARE)
	install -o root -g root -m 755 README LICENSE Changelog $(DESTDIR)$(SHARE)

uninstall:
	rm -rf $(DESTDIR)$(PREFIX)/bin/$(TARGET)
	rm -rf $(DESTDIR)$(MAN)/$(TARGET).1
	rm -rf $(DESTDIR)$(SHARE)

