#!/bin/bash

echo Welcome $USERNAME
echo The current date is $(date +%d-%m-%Y)
echo The current time is $(date +%H:%M)
echo The working directory is $(pwd)
echo Number of files in that directory $(pwd) is $(ls|wc -l)
echo The biggest file in the current directory is $(ls -S | head -1)
