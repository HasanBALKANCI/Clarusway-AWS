#! /bin/bash

devops_tools=("docker" "kubernets" "ansible" "terraform" "jenkins")

for TOOL in ${devops_tools[@]}
do
    echo $TOOL
done
