# 과제 1

### 1. **서버 ip 주소 알아내기**

**1) 컴퓨터에 부여된 실제 ip**

<img width="602" alt="아파치1" src="https://github.com/b612-devops-track/linux-WIL/assets/103591752/76800c13-8d74-4445-b4a7-4447c355d29d">

ip라는 명령어가 사용되지 않는다

`iproute2`라는 패키지를 설치하면 사용할 수 있다고 한다

`iproute2`라는 패키지는 리눅스에서 네트워크 관련 작업를 수행하는 역할을 한다

```bash
arch -arm64 /bin/bash
brew install iproute2mac
```

그래서 homebrew를 이용해 iproute2mac 패키지를 설치해 주었다

zsh에서 바로 설치하려고 하니까

```bash
Error: Cannot install under Rosetta 2 in ARM default prefix (/opt/homebrew)!
To rerun under ARM use:
arch -arm64 brew install ...
To install under x86_64, install Homebrew into /usr/local
```

이런 에러가 떠서… ARM 아키텍처로 터미널을 실행한 뒤 설치해 주었다

<img width="602" alt="아파치2" src="https://github.com/b612-devops-track/linux-WIL/assets/103591752/09cd356f-cc7b-41f9-a9f0-6009afdd33ed">

<img width="602" alt="아파치3" src="https://github.com/b612-devops-track/linux-WIL/assets/103591752/b9e825e7-7df5-4c7e-a647-d35a51bd4f3d">

192.168.0.111

**2) 컴퓨터가 외부에 접속할 때 사용하는 ip 주소**

<img width="602" alt="아파치4" src="https://github.com/b612-devops-track/linux-WIL/assets/103591752/e23a943a-0204-4265-bd65-f338faaaecbb">

110.11.254.155

### 2. 서버 컴퓨터에 웹 서버 설치하기

Hombrew를 사용해 Apache를 설치했다.

```bash
brew update
brew install httpd
```

<img width="602" alt="아파치5" src="https://github.com/b612-devops-track/linux-WIL/assets/103591752/686ac2e6-73f3-49c7-85ab-d2246e4f1981">

### 3. 웹 서버 설치 여부 확인하기(2가지 방법 모두)

**1) 버전 확인**

```bash
httpd -v
```

<img width="265" alt="아파치6" src="https://github.com/b612-devops-track/linux-WIL/assets/103591752/ce05d0d3-515c-438a-a15a-b23edcac32ec">

**2) status 확인**

```bash
brew services list
```

macOS에서는 systemd를 사용하지 않아 위 명령어를 사용해 Homebrew로 설치한 서비스 목록을 확인했다.

<img width="275" alt="아파치7" src="https://github.com/b612-devops-track/linux-WIL/assets/103591752/8e8e7460-e3c5-4ea9-9693-5b69aeb18ddd">

### 4. 웹 서버 실행/중지/재시작 해보기

```bash
brew services start httpd
brew services stop httpd
brew services restart httpd
```

**1) 실행**

<img width="602" alt="아파치8" src="https://github.com/b612-devops-track/linux-WIL/assets/103591752/0414cfb8-c11b-4490-b1ed-b4bd3f8921bf">

<img width="1256" alt="아피치9" src="https://github.com/b612-devops-track/linux-WIL/assets/103591752/563b4dd9-dff1-4449-8a28-3136a2969a99">

**2) 중지**

<img width="602" alt="아파치10" src="https://github.com/b612-devops-track/linux-WIL/assets/103591752/5f0e3baa-f67e-47e6-92d2-1222f5a53274">

<img width="1256" alt="아파치11" src="https://github.com/b612-devops-track/linux-WIL/assets/103591752/71546344-5e5f-4800-a436-395217510770">

**3) 재시작**

<img width="602" alt="아파치12" src="https://github.com/b612-devops-track/linux-WIL/assets/103591752/f783b899-ca36-42d9-99e8-c762f43e03ad">

<img width="1256" alt="아파치13" src="https://github.com/b612-devops-track/linux-WIL/assets/103591752/7be9514e-b38e-4d03-957b-323e75bc22b9">
