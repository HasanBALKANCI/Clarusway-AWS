#! /bin/bash

NUMBER=1

until [[ $NUMBER -lt 1 ]]
do
    echo $NUMBER
    ((NUMBER++))
done
echo "Now, number is $NUMBER"