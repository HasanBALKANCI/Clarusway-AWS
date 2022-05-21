#! /bin/bash
echo "Numbers:"

for NUMBER in {0..3}
do 
    echo $NUMBER
done

echo "Names:"

for NAME in Joe David Matt Jhon Timothy
do
    echo $NAME
done

echo "Files in current folder:"

for FILE in `pwd`/*
do
    echo $FILE
done