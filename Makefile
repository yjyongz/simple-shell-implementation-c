all:
	gcc -o mshell -fprofile-arcs -ftest-coverage bash.c -g3
clean:
	rm mshell
	rm mshell.c.gcov
	rm -rf mshell.dSYM
	rm mshell.gcda
	rm mshell.gcno
