#! /bin/bash

#Scenario: Write a script that accepts a username and checks if the user exists on the system.

read -p "Enter the username : " username
if
id "$username" &>/dev/null; then
echo "username $username exist"
else
echo "username $username does not exist"
fi

