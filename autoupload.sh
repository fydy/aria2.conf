#!/bin/bash
path=$3
downloadpath='/home/runner/work/dk/dk/test'
if [ $2 -eq 0 ]
        then
                exit 0
fi
while true; do
filepath=$path
path=${path%/*}; 
if [ "$path" = "$downloadpath" ] && [ $2 -eq 1 ]
    then
    rclone move "$filepath" /disk/google/      
    exit 0
elif [ "$path" = "$downloadpath" ]
    then
    rclone move "$filepath"/ /gdh/gdh/"${filepath##*/}"/
    exit 0
fi
done
