#!/bin/bash


echo "compiling precision example..."
cmd="g++ -std=c++14 -o precision_test -lngt test.cpp"
eval $cmd
echo "Done"
