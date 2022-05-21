#! /bin/bash
Welcome () {
    echo -e "Welcome to Linux Lessons \n$1 \n$2 \n$3 \n$# \n$@ \n$0" 
    return 0
  }
Welcome Joe Matt Timothy
echo $?