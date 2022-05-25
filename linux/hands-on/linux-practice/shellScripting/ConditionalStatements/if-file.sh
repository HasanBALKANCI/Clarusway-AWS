#!/bin/bash
if [[ -d folder ]]
then 
    echo "folder is a directory"
fi

if [[ -e file ]]
then 
    echo -e "\nfile is exist."
fi

if  [[ -f file ]]
then
    echo "file is an ordinary file."
fi

if [[ -r file ]]
then
    echo "file is a readable"
fi

if [[ -s file ]]
then 
    echo "file is not empty"
fi

if  [[ -x $0 ]]
then 
    echo "$0 is executable"
fi