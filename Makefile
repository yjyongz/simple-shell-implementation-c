all:
	$(CC) -coverage -O0  bash.c -o mshell -g3
clean:
	rm mshell
	rm mshell.c.gcov
	rm -rf mshell.dSYM
	rm mshell.gcda
	rm mshell.gcno
