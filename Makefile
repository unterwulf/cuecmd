PREFIX = /usr/local
BINDIR = $(PREFIX)/bin
LIBDIR = $(PREFIX)/lib

help:
	@echo "The only target install takes the following standard parameters:"
	@echo
	@echo "  DESTDIR for staging directory, by default /"
	@echo "  PREFIX for installation prefix, by default $(PREFIX)"
	@echo "  BINDIR for binaries directory, by default PREFIX/bin"
	@echo "  LIBDIR for libraries directory, by default PREFIX/lib"

install:
	install -m 755 -D cuecmd $(DESTDIR)$(BINDIR)/cuecmd
	install -m 644 -D cuecmd_flac $(DESTDIR)$(LIBDIR)/cuecmd/cuecmd_flac
	install -m 644 -D cuecmd_mp3 $(DESTDIR)$(LIBDIR)/cuecmd/cuecmd_mp3
	sed -i 's@/usr/local/lib/cuecmd@$(LIBDIR)/cuecmd@' $(DESTDIR)$(BINDIR)/cuecmd

.PHONY: help install
