#!/bin/bash

file="users.csv"

# Read the CSV file
while IFS="," read -r username password
do
    # 이미 존재하는 경우
    if id -u "${username}" >/dev/null 2>&1; then
        echo "${username}이 이미 존재합니다."
    else
        # 없는 경우
        useradd "${username}"
        echo "${username}:${password}" | chpasswd
        echo "${username}이 등록되었습니다."
    fi
done < "${file}"
