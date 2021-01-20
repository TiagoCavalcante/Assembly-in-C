# Assembly-in-C
A print function created in Assembly and used inside C

## how to run
To run you need to:
* give permission to the executable: `chmod +x bin/main`
* run the program: `./bin/main`

(it's already compiled)

## how to compile
To compile you need to:
* compile the Assembly file: `nasm -f elf64 src/utils/print.asm -o bin/print.o`
* compile the C file linking the `print.o` file:
	* with Tiny C (recommended): `tcc src/main.c bin/print.o -o bin/main`
	* with GCC: `gcc src/main.c bin/print.o -o bin/main -ffreestanding -O3`