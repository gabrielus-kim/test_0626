# test_0626
## 1. Dockerfile 작성
```
FROM ubuntu
MAINTAINER ysk <avante789@gmail.com>

RUN apt update -y
RUN apt install -y nginx
CMD ["nginx", "-g", "daemon off;"]
```

