#!/bin/bash

for number in 0 1 2 3 4 5 6 7 8 9 
do
    echo "$number"
done
echo "Names:"

for NAME in Susan Hasan Adam Jhon Clark Jeny
do 
    echo "Welcome to Sweden $NAME"
done

for FILE in $(ls)
do
    echo "In current directory you have
these $FILE"
done