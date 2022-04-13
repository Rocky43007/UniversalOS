#!/bin/sh
set -e
. ./config.sh
export PATH="$HOME/UniversalOS/compiler/bin:$PATH"

for PROJECT in $PROJECTS; do
  (cd $PROJECT && $MAKE clean)
done

rm -rf sysroot
rm -rf isodir
rm -rf myos.iso
