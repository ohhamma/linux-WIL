# 과제1

## 1. 서버 ip 주소 알아내기

### 컴퓨터에 부여된 실제 ip 주소 출력

```java
$ipconfig getifaddr en0
$ifconfig | grep inet
```

<img width="682" alt="1" src="https://github.com/yj-leez/linux-WIL/assets/77960090/bba195ad-0266-4d41-ac53-f592867bbe65">


보통 nat으로 내부ip를 할당하는 경우 10.0.0.0 ~ 10.255.255.255, 172.16.0.0 ~ 172.31.255.255, 192.168.0.0 ~ 192.168.255.255 중 ip가 있어야하는데 전혀 다른 숫자가 나왔다.

혹시나싶어 ip addr 명령어를 사용하기 위해 `iproute2mac`을 설치하였다.

```java
brew install iproute2mac
```

<img width="560" alt="2" src="https://github.com/yj-leez/linux-WIL/assets/77960090/c857931a-69dd-44c4-944c-0e5386d83af2">


똑같이 뜬다. 찾아보니 공유기를 사용하는 경우에도 Twins ip라는 기능을 사용하면 내부 ip와 공인 ip를 매핑시켜서 똑같이 뜰 수 있다고 한다.

### 컴퓨터가 외부에 접속할 때 사용하는 ip 출력

```java
$curl [ipinfo.io/ip](http://ipinfo.io/ip)
```

첫번째 사진에 포함되어 있다.

## 2. 서버 컴퓨터에 웹 서버 설치하기

### 웹 서버 설치하기

```java
brew install httpd
```

<img width="682" alt="3" src="https://github.com/yj-leez/linux-WIL/assets/77960090/f4446a95-03b2-4880-8113-9cd0998c59e0">


### 웹 서버 실행하기

```java
httpd -v
apachectl -v
```

<img width="560" alt="4" src="https://github.com/yj-leez/linux-WIL/assets/77960090/ad4ebee5-33fe-47bb-82ef-ff7d4ac8616f">


까지 확인했으나 `localhost:8080`으로 실행하니 nginx 실행 창이 뜬다.

```java
brew services start httpd
```
<img width="1552" alt="5" src="https://github.com/yj-leez/linux-WIL/assets/77960090/33aba325-ae11-483e-8f60-0d2cd2dd35a2">



찾아보니 전에 nginx를 설치한 적이 있는데 아파치가 이전에 설치된 nginx 경로의 html 파일들을 그대로 실행중인 것 같다고 한다.

```java
whereis httpd
```

명령어로 httpd 파일들의 경로를 찾아보니 다음과 같은 경로에 httpd가 저장되어있었다.

<img width="560" alt="6" src="https://github.com/yj-leez/linux-WIL/assets/77960090/5485bb22-f677-4844-8940-cd3baf7ab03d">


하지만 위의 경로들 중 default html 파일들이 들어있는 디렉토리가 없었다. 

apache2의 default html 파일들이 들어있는 디렉토리를 찾은 후에는 `/etc/nginx/site-available/default`파일이나 `/etc/nginx/nginx.conf` 파일 내부의 root path를 해당 디렉토리로 변경하면 된다. 추후에 찾게 된다면 수정하겠다.

### 웹 서버 중단하기

```java
brew services stop httpd
```
