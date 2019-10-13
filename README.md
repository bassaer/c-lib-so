# c-lib-so

```
❯ make
make --no-print-directory -C lib
gcc -Wall -Wextra -I../include -shared -fPIC -g -O2 func.c -o libfunc.so
make --no-print-directory -C src
cc -Wall -Wextra -I../include -L../lib -lfunc main.c -o hellocmd
hello world!!
```
