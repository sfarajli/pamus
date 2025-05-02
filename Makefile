.POSIX:

PREFIX ?= /usr/local

install: 
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f pamus ${DESTDIR}${PREFIX}/bin
	chmod 755 ${DESTDIR}${PREFIX}/bin/pamus

uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/pamus

.PHONY: install uninstall
