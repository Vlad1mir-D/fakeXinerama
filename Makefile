all:
	gcc -c -fPIC Xinerama.c -o libXinerama.o
	gcc -shared -Wl,-soname,libXinerama.so.1 -o libXinerama.so.1.0 libXinerama.o

install:
	install -m 0755 libXinerama.so.1.0 /usr/local/lib/
	install -m 0755 fakexinerama.sh /usr/local/bin/

uninstall:
	rm -f /usr/local/lib/libXinerama.so.1.0
	rm -f /usr/local/bin/fakexinerama.sh

clean:
	rm -f *.so.* *.o
