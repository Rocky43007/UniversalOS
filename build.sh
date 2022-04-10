#! /bin/sh

export PATH="$HOME/UniversalOS/compiler/bin:$PATH"

i686-elf-as boot.s -o boot.o
echo Boot File Output Created
i686-elf-gcc -c kernel.c -o kernel.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra
echo Kernel Created
i686-elf-gcc -T linker.ld -o myos.bin -ffreestanding -O2 -nostdlib boot.o kernel.o -lgcc
echo .bin file created
if grub-file --is-x86-multiboot myos.bin; then
  echo multiboot confirmed
else
  echo the file is not multiboot
fi
cp myos.bin isodir/boot/myos.bin
grub-mkrescue -o universalos-1.0.0-alpha_1.iso isodir

