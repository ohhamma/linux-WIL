#!/bin/bash

file="users.csv"

while IFS=: read -r username password;
do
    if id - u "$username" >/dev/null 2>&1; then
        echo "유저 '$username'이 이미 존재합니다."
    else
        sudo useradd $username
        echo "$username:$password" | sudo chapasswd
        echo "'$username'이 등록되었습니다."
    fi
done < "$file"
