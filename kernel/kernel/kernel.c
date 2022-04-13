#include <stdio.h>

#include <kernel/tty.h>

void kernel_main(void) {
	terminal_initialize();
	printf("Welcome to Universal OS: Version 1.0.0-alpha by Rocky43007\n");
}
