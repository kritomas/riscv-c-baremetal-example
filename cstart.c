int cstart()
{
	volatile int a = 0x69, b = 0x420; // Nice
	volatile int c = a + b; // Disable compile time optimization
	return c; // c should show up in a0
}