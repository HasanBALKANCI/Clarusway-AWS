#! /bin/bash
echo "Numbers:"
for NUMBER in {0..9}
do
    echo $NUMBER
done

echo "Names:"

for NAME in JOe DAvid Matt Marcus Timothy
do
    echo $NAME
    sudo useradd $NAME
    echo "User $NAME was deleted"
done