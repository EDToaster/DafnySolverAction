#!/bin/sh -l

FILES=$1

for file in $FILES
do
    dafny "$file"
done