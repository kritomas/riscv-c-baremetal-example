.section .text
.global _start # Make _start accessible in link.ld

_start:
	la sp, __stack_top # Set the stack pointer to the top
	add s0, sp, zero # Set the frame pointer to the stack pointer
	call cstart # Call cstart from cstart.c
	j loop # Idle loop

loop:	j loop # Idle loop after cstart returns
