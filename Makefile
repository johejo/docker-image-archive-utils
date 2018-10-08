PREFIX ?= ~/.local

install:
	mkdir -p $(PREFIX)/bin
	cp bin/docker-save-image-to-archive bin/docker-load-image-from-archive $(PREFIX)/bin/

uninstall:
	rm -f $(PREFIX)/bin/docker-save-image-to-archive $(PREFIX)/bin/docker-load-image-from-archive

.PHONY: install uninstall
