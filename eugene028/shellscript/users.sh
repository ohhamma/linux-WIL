#!/bin/bash

filename="users.csv" 

while IFS=', ' read -r username password
do
    # username이 이미 존재하는지 확인
    getent passwd "$username" > /dev/null

    # 이미 존재하는 경우
    if [ $? -eq 0 ]; then
        echo "유저 '$username'가 이미 존재합니다."
    else
        # 새로운 유저 추가
        useradd -m -s /bin/bash "$username"
        echo "$username:$password" | chpasswd
        echo "유저 '$username'가 성공적으로 추가되었습니다."
    fi
done < "$filename"