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

