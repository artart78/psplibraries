#!/bin/sh
set -e
get_pspports libvorbis
LDFLAGS="-L$(psp-config --pspsdk-path)/lib" LIBS="-lc -lpspuser" ./autogen.sh --host psp --prefix=$(psp-config --psp-prefix) || { exit 1; }
run_make -j 4
