#!/bin/bash

number=1

while [[ $number -ge 10  ]]
do
  echo $number
  ((number++))
done
echo "Now, number is $number"