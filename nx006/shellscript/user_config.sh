#!/bin/bash

# CSV file name
FILE="users.csv"

# Read the CSV file
while IFS="," read -r username password
do
    # Check if the user already exists
    if id -u "${username}" >/dev/null 2>&1; then
        echo "User ${username} already exists. Skipping..."
    else
        # If the user does not exist, create the user and set the password
        useradd "${username}"
        echo "${username}:${password}" | chpasswd
        echo "User ${username} has been created."
    fi
done < "${FILE}"