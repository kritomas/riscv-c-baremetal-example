OUTPUT_ARCH(riscv) /*Define the target architecture*/

MEMORY {
	RAM (rwx) : ORIGIN = 0x80000000, LENGTH = 0x8000000 /*Define RAM (length and origin obtained from dtb)*/
}
ENTRY(_start) /*Define entry point as _start*/

SECTIONS
{
	PROVIDE(__stack_top = ORIGIN(RAM) + LENGTH(RAM)); /*Set __stack_top to the end of RAM*/
}