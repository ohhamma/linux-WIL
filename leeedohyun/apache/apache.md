# 과제1

## 1. 서버 ip 주소 알아내기
<img width="782" alt="스크린샷 2023-06-17 오전 11 51 59" src="https://github.com/leeedohyun/linux-WIL/assets/116694226/aa2f118f-ada7-4cc9-89ce-d7cbcd867638">


`ip addr` 명령어를 사용하니 오류가 발생한다. 그래서 `iproute2mac`을 설치해줬다.

<br>

> brew install iproute2mac


<img width="782" alt="스크린샷 2023-06-17 오후 12 19 46" src="https://github.com/leeedohyun/linux-WIL/assets/116694226/dbe0bbca-5feb-4372-ba77-b8d4e1fba000">

이제 명령어가 잘 실행되는 것을 확인할 수 있다.      


### 컴퓨터에 부여된 실제 ip

<img width="670" alt="스크린샷 2023-06-17 오후 12 26 54" src="https://github.com/leeedohyun/linux-WIL/assets/116694226/6af46a13-071d-48e4-9d09-e22834fb4eab">


### 컴퓨터가 외부에 접속할 때 사용하는 ip

<img width="668" alt="스크린샷 2023-06-17 오후 12 32 35" src="https://github.com/leeedohyun/linux-WIL/assets/116694226/cae2ce8a-fb7e-428a-900b-5c8a0099ee21">


## 2. 서버 컴퓨터에 웹 서버 설치하기

> brew install httpd

<br>
위의 명령어를 이용하여 웹 서버를 설치한다.


<img width="782" alt="스크린샷 2023-06-17 오후 12 40 26" src="https://github.com/leeedohyun/linux-WIL/assets/116694226/c479faf7-2dd2-425f-a137-bb9b88d0cba1">

### 버전확인
> httpd -v      
> apachectl -v

<br>

위의 명령어로 버전을 확인하면 다음과 같은 결과가 나온다.

<br>

<img width="671" alt="스크린샷 2023-06-17 오후 12 46 56" src="https://github.com/leeedohyun/linux-WIL/assets/116694226/a337a1cc-bd7a-49ea-a746-0d2ac2b5845b">

### 웹 서버 실행

> brew services start httpd

<br>

<img width="1440" alt="스크린샷 2023-06-17 오후 12 50 28" src="https://github.com/leeedohyun/linux-WIL/assets/116694226/10273446-a9fb-4164-995f-7e5dd0475abf">


### 웹 서버 중단

> brew services stop httpd

<br>

<img width="1440" alt="스크린샷 2023-06-17 오후 12 51 10" src="https://github.com/leeedohyun/linux-WIL/assets/116694226/4f1164d2-07b8-4253-a9bb-67e5bb955a01">
