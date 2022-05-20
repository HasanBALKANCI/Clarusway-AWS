#!/bin/bash -x
read -p "Input first number: " first_number # first_number=5
read -p "Input second number: " second_number # second_number=8

echo "SUM="$(expr $first_number + $second_number) # SUM=13
echo "SUB="`expr $first_number - $second_number`
echo "MUL="`expr $first_number \* $second_number`
echo "DIV="`expr $first_number // $second_number`
