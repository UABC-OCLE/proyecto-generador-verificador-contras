debug: main.o caracter.o longitud.o mayuscula.o minuscula.o numero.o
	gcc -g -o program  main.o caracter.o longitud.o mayuscula.o minuscula.o numero.o

release: main.o caracter.o longitud.o mayuscula.o minuscula.o numero.o
	gcc -o programa main.o caracter.o longitud.o mayuscula.o minuscula.o numero.o

main.o: main.c
	gcc -c main.c

caracter.o: caracter.asm
	nasm -f elf64 -o caracter.o caracter.asm

longitud.o: longitud.asm
	nasm -f elf64 -o longitud.o longitud.asm

mayuscula.o: mayuscula.asm
	nasm -f elf64 -o mayuscula.o mayuscula.asm

minuscula.o: minuscula.asm
	nasm -f elf64 -o minuscula.o minuscula.asm

numero.o: numero.asm
	nasm -f elf64 -o numero.o numero.asm

clean:
	rm -f programa programa_debug *.o
