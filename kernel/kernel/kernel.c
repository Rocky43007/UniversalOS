#include <stdio.h>

#include <kernel/tty.h>

#include <stdint.h>
#include <stdlib.h>

/*#if UINT32_MAX == UINTPTR_MAX
#define STACK_CHK_GUARD 0xe2dee396
#else
#define STACK_CHK_GUARD 0x595e9fbd94fda766
#endif*/

void kernel_main(void)
{
	terminal_initialize();
	printf("Welcome to Universal OS: Version 1.0.0-alpha by Rocky43007\n");
}

//uintptr_t __stack_chk_guard = STACK_CHK_GUARD;

/*__attribute__((noreturn)) void __stack_chk_fail(void)
{
#if __STDC_HOSTED__
	abort();
#elif __is_myos_kernel
	printf("Stack smashing detected");
#endif
}*/
