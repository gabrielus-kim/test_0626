FROM ubuntu
MAINTAINER ysk <avante789@gmail.com>

RUN apt update -y
RUN apt install -y nginx
CMD ["nginx", "-g", "daemon off;"]
