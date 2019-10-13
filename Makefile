CFLAGS = -Wall -Iinclude

all: hello

lib/func.so: lib/func.c
	gcc $(CFLAGS) -shared -fPIC -g -O2 lib/func.c -o lib/func.so

hellocmd: lib/func.so
	gcc $(CFLAGS) src/main.c -o hellocmd lib/func.so

hello: hellocmd
	@./hellocmd

clean:
	rm -f ./hellocmd
	rm -f lib/func.so
