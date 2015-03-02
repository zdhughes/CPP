#!/bin/bash
for i in $(find . -name CMakeCache.txt) ; do
        rm $i
done
for i in $(find . -name cmake_install.cmake) ; do
        rm $i
done
for i in $(find . -name CMakeFiles) ; do
        rm -r $i
done