#!/bin/bash

FILE="users.csv"

while IFS="," read -r username password; do
    if id -u "${username}" >/dev/null 2>&1; then
        echo "'${username}'는 이미 존재하는 사용자입니다." 
        exit
    fi
    useradd "${username}"
    echo "${username}:${password}" | chpasswd
    echo "${username}는 사용자로 등록되었습니다."
done < "${FILE}"