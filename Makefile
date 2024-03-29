CROSS_COMPILER=riscv64-unknown-elf-

all : start.s
	$(CROSS_COMPILER)as start.s -c -o start.o # Assemble assembly loader
	$(CROSS_COMPILER)gcc cstart.c -nostdlib -ffreestanding -c -o cstart.o # Compile C without linking
	$(CROSS_COMPILER)ld -T link.ld start.o cstart.o --no-dynamic-linker -static -nostdlib -s -o riscv.bin # Linking everything, producing the baremetal binary