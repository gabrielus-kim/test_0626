# test_0626
## 1. Dockerfile 작성
```
FROM ubuntu
MAINTAINER ysk <avante789@gmail.com>

RUN apt update -y
RUN apt install -y nginx
CMD ["nginx", "-g", "daemon off;"]
```

## build 실행
~~~
user@DESKTOP-14530KF MINGW64 ~/test_0626 (master)
$ docker build --tag gabriel111/test_0626 .
Sending build context to Docker daemon  62.98kB
Step 1/5 : FROM ubuntu
 ---> 74435f89ab78
Step 2/5 : MAINTAINER ysk <avante789@gmail.com>
 ---> Running in 7f3ea165d7ba
Removing intermediate container 7f3ea165d7ba
 ---> 1ef9a3e605f2
Step 3/5 : RUN apt update -y
 ---> Running in 7ea0dc4f0007

~~~

## docker 이미지 실행
~~~
user@DESKTOP-14530KF MINGW64 ~/test_0626 (master)
$ winpty docker run -it --name n1 -p 8888:80 gabriel111/test_0626
~~~

##  크롬에서 localhost:8888  로  확인 완료
~~~
Welcome to nginx!
If you see this page, the nginx web server is successfully installed and working. Further configuration is required.

For online documentation and support please refer to nginx.org.
Commercial support is available at nginx.com.

Thank you for using nginx.
~~~

## docker push 로 docker hub 에 등록
~~~
user@DESKTOP-14530KF MINGW64 ~/test_0626 (master)
$ docker push gabriel111/test_0626
The push refers to repository [docker.io/gabriel111/test_0626]
d7cda0ea0a2a: Preparing
c0cf9e33ac9c: Preparing
05f3b67ed530: Preparing
ec1817c93e7c: Preparing

~~~
