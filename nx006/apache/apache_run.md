## 실습 결과

![apache_run](./assets/apache_run.png)



## 실습 쉘

```bash
$ apachectl -v
Server version: Apache/2.4.57 (Unix)
Server built:   Apr  6 2023 18:16:37

$ apachectl start

$ apachectl stop
```

혹은 brew services를 이용할 수도 있음

```bash
$ brew services start httpd
$ brew services info httpd
$ brew services stop httpd
```