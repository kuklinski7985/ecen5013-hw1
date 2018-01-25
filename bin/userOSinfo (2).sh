#!/bin/sh

#Script to create file to show operating system playform information
#ECEN5013, Homework #1, problem 6

#creates output file
touch platformInfo

echo "-------------------User Information--------------------" > platformInfo
id >> platformInfo


#architecture informtion
echo "-------------------ARCHITECURE INFORMATION-------------" >> platformInfo
lscpu >> platformInfo

#operating system information
echo "-------------------OS INFROMATION----------------------" >> platformInfo
cat /etc/*-release >> platformInfo

#kernel information
echo "-------------------KERNEL INFORMATION------------------" >> platformInfo
cat /proc/version >> platformInfo

#information on file system memory
echo "-------------------FILE SYSTEM INFORMATION-------------" >> platformInfo
df -h >> platformInfo
