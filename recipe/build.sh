#!/bin/sh
mkdir build && cd build

#cmake -G "Ninja"                            \
cmake                                       \
    -DCMAKE_INSTALL_PREFIX=${PREFIX}        \
    -DCMAKE_BUILD_TYPE=Release              \
    -DCMAKE_INSTALL_LIBDIR=lib              \
    ..

#ninja install
make install -j${CPU_COUNT}
