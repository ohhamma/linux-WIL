#!/bin/bash

users_file="./users.csv"

username="nayeon"
password="0000"


if ! grep -q "$username" "$users_file"; then
	echo "$username, $password" >> "$users_file"
	echo "사용자를 추가했습니다"
else
	echo "이미 존재하는 사용자입니다"
fi


