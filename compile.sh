#!/bin/bash

# define env vars in shell for the script
export CC=gcc
export CXX=g++
# set compiler flags (mainly for debugging purposes)
#export CFLAGS="-g -O0 -Wall"
#export CXXFLAGS="-g -O0 -Wall"

# if script is started in the main source code dir:
[ ! -d build_2 ] && mkdir build_2
cd build_2

# CMake creates Makefile:
# -D flags are prioritized over the project's default values
# .. is the path to the CMakeLists.txt
# additional flags (not necessary here):
## -DCMAKE_C_COMPILER=/usr/local/bin/gcc-8 \
## -DCMAKE_CXX_COMPILER=/usr/local/bin/g++-8 \

cmake \
  -DGMX_MPI=OFF \
  -DGMX_THREADS=OFF \
  -DBUILD_SHARED_LIBS=OFF \
  -DGMX_FFT_LIBRARY=fftpack \
  -DCMAKE_INSTALL_PREFIX=/Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/install_2 \
  ..

# run make (j=number of threads used for compilation)
make -j 2

# install the binary
make install
