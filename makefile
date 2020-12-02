CC=gcc
CFLAGS=-I. -no-pie #-nostartfiles

%.o: %.c
	$(CC) -c -o $@ $< 

%.o: %.asm
	nasm -f elf64 -o $@ $<

output: main.o asm.o
	$(CC) $(CFLAGS) -o output $^  

run:
	./output	
	
clean:
	rm *.o

.PHONY: %.o
