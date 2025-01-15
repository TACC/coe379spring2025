#!/bin/bash

rm -rf build
mkdir build
cd build
FC=ifx cmake ../cmake_example_f08
make
