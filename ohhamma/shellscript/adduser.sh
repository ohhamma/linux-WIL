#!/bin/bash

# input file
INPUT=users.csv

while IFS=", " read -r username password
do
  # Check user existance"
  if id -u "$username" >/dev/null 2>&1; then
    echo "User $username already exists."
  # Add new user
  else
    useradd "$username"
    echo "$username:$password" | chpasswd
    echo "User $username added successfully."
  fi
done < $INPUT
