CFLAGS = -Wall -Wextra -Iinclude

all: hello

lib/libfunc.so: FORCE
	make --no-print-directory -C lib

src/hellocmd: lib/libfunc.so
	make --no-print-directory -C src

hello: src/hellocmd
	@LD_LIBRARY_PATH=lib src/hellocmd

clean:
	rm -f src/hellocmd
	rm -f lib/libfunc.so

FORCE:
.PHONY: clean FORCE
