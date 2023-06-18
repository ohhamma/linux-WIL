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

### 참고문헌
[레퍼런스1](https://helloworld-japan.tistory.com/21)
[레퍼런스2](https://zzsza.github.io/development/2017/12/04/linux-1/)
[레퍼런스3](https://www.youtube.com/watch?v=mu0C6MkB_68&list=PLYRfEO8DA8gikpkXw8wF8kJZDod2lFrML&index=6)
