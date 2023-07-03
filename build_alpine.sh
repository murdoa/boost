#!/bin/ash
#
# Adopted build config from: https://git.alpinelinux.org/aports/tree/main/boost1.82
#

echo "Building b2"
./b2 install \
    --prefix=/usr \
    variant=release \
    toolset=gcc \
    debug-symbols=off \
    threading=multi \
    runtime-link=shared \
    link=shared,static \
    cflags=-fno-strict-aliasing \
    --layout=system \
    --without-graph_parallel \
    --without-mpi \
    -q \
    -j$(nproc)
