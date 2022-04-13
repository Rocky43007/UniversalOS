#!/bin/sh
set -e
. ./build.sh
export PATH="$HOME/UniversalOS/compiler/bin:$PATH"

mkdir -p isodir
mkdir -p isodir/boot
mkdir -p isodir/boot/grub

cp sysroot/boot/myos.kernel isodir/boot/myos.kernel
cat > isodir/boot/grub/grub.cfg << EOF
menuentry "universalos" {
	multiboot /boot/myos.kernel
}
EOF
grub-mkrescue -o universalos-"$1".iso isodir
