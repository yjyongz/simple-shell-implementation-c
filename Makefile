all:
	gcc -o bash -fprofile-arcs -ftest-coverage bash.c -g3
clean:
	rm bash
	rm bash.c.gcov
	rm -rf bash.dSYM
	rm bash.gcda
	rm bash.gcno
