#!/bin/bash

rm -rf build
mkdir build
cd build
CC=icx cmake ../cmake_example_c
make
