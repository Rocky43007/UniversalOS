#!/bin/sh
set -e
. ./config.sh
export PATH="$HOME/UniversalOS/compiler/bin:$PATH"

mkdir -p "$SYSROOT"

for PROJECT in $SYSTEM_HEADER_PROJECTS; do
  (cd $PROJECT && DESTDIR="$SYSROOT" $MAKE install-headers)
done
