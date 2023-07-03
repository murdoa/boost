#!/bin/ash
#
# Adopted build config from: https://git.alpinelinux.org/aports/tree/main/boost1.82
#

echo "Building b2"
cd ./tools/build
./bootstrap.sh
cd ../../

echo "Building bcp"
cd  ./tools/bcp
../build/b2 -j$(nproc)
cd ../../

echo "Building boost"
./bootstrap.sh --with-toolset=gcc --with-icu 
