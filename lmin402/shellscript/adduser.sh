#!/bin/bash

# CSV file name
FILE="users.csv"

# Read the CSV file
while IFS="," read -r username password
do
    if id -u "${username}" >/dev/null 2>&1; then
        echo "User ${username} already exists."
    else
        useradd "${username}"
        echo "${username}:${password}" | chpasswd
        echo "User ${username} has been created."
    fi
done < "${FILE}"