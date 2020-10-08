#!/bin/sh -l

FILES=$1

for file in $FILES
do
    printf "📦 Verifying file: $file\n"
    dafny "$file" || { printf "⛔ There was a problem with verifying file $file\n"; exit 1; } 
done

NUMFILES=$(echo '$FILES' | wc -w)
printf "✔ Successfully verified $NUMFILES files.\n"