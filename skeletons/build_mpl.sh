#!/bin/bash

rm -rf build
mkdir build
cd build
CXX=icpx cmake ../cmake_example_mpl
make
