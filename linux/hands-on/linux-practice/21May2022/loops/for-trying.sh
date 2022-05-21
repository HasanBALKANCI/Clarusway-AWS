#! /bin/bash
echo "Files in current folder"

for FILE in `pwd`/* # $(pwd)/*
do
    echo $FILE
done