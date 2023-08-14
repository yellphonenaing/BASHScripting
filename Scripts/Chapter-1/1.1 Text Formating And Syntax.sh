#!/usr/bin/bash
#This is command

ls; pwd # usage of ;
id && whoami # usage of &&
cat /etc/shadow | cat /etc/passwd  # usage of double pipe
cat /etc/passwd | head -n 10
echo "Hello world"
echo -e "\e[1;32mHello World\e[0m"
echo -e "\e[1;41mHello World\e[0m"
echo -e "\e[1;32;41mHello World\e[0m"
echo -e "\e[5;32;41mHello World\e[0m"
echo -n "Working => "
sleep 2
echo "Success"
