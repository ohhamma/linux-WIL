#!/bin/sh
 
# CSV 파일 지정
csvfile="./users.csv"

username = "damwon"
password = "1234"
 
# CSV 파일이 존재하지 않으면 종료
if [ ! -f "$csvfile ]; then          
    echo "CSV 파일이 존재하지 않습니다: $csvfile" >&2     
    exit 1
fi

while IFS = "," read -r username password
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
