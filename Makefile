all: bool.so int.so str.so nil.so ref.so

uwu_include_path=..

%.so: %.c
	gcc -g -I${uwu_include_path} -shared -fpic $< -o $@ -D_GNU_SOURCE -Wall -Wextra

clean:
	rm -rf *.so
