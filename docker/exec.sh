#!/bin/bash
directory=$1
cp -r $1/*.wav /tmp
files=`find /tmp -type f -name "*.wav"`

for file in $files;
do
    phase_limiter --input $file --output ${file%.*}_mas.wav
    rm $file
done

mv /tmp/*.wav $1