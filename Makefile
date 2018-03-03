.PHONY: all clean
all:basmat
clean:
	rm basmat
basmat:basmat.c
	gcc -o basmat basmat.c

