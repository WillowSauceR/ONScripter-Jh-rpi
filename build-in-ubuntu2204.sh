#!/bin/bash

sed -i 's/\/usr\/include\/lua/\/usr\/include\/lua5.1/g' Makefile.Linux

sed -i 's/clang++/g++/g' Makefile.Linux

sed -i 's/DEFS += -DUSE_SIMD -DUSE_SIMD_X86_SSE2/#DEFS += -DUSE_SIMD -DUSE_SIMD_X86_SSE2/g' Makefile.Linux

sed -i 's/-llua/-llua5.1/g' Makefile.Linux

make -f Makefile.Linux

./onscripter -v
