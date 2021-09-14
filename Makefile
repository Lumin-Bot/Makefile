# CC is the standard variable to hold the command that invokes the C compiler.
CC = gcc
CFLAGS := -g -Wall -Werror

hello: main.o dohello.o
	$(CC) -o hello main.o dohello.o

main.o: main.c
	$(CC) $(CFLAGS) -DDOHELLO=do_hello
	$(CC) $(CFLAGS) -c main.c -DMAIN

# You should not modify the submission or submission.tar rules
submission: submission.tar

submission.tar: Makefile name.c
	tar cf submission.tar Makefile name.c

clean:
	rm -f hello name submission.tar *.o
