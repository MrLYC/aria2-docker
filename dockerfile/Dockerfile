FROM ubuntu:latest

MAINTAINER LYC <imyikong@gmail.com>

RUN apt-get update && \
    apt-get -y upgrade && \
    mkdir -p /site/download && \
    mkdir -p /etc/nginx/conf.d

ADD aria2.conf /etc/aria2.conf
ADD aria2.site.conf /etc/nginx/conf.d/

RUN DEBIAN_FRONTEND=noninteractive apt-get -y install aria2 && \
    apt-get install -y nginx && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /site/
VOLUME ["/site/download"]

EXPOSE 80
EXPOSE 6880

ENTRYPOINT ["aria2c", "--conf-path=/etc/aria2.conf"]

