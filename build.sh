#!/bin/sh
set -e
. ./headers.sh

export PATH="$HOME/UniversalOS/compiler/bin:$PATH"

for PROJECT in $PROJECTS; do
  (cd $PROJECT && DESTDIR="$SYSROOT" $MAKE install)
done
