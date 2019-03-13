FROM ubuntu:bionic-20190307
MAINTAINER vamshi@hasura.io

RUN apt-get -y update \
    && apt-get install -y ca-certificates \
    && rm -rf /var/lib/apt/lists/*

RUN sed -i'' 's/http:\/\/archive\.ubuntu\.com/https:\/\/mirrors\.edge\.kernel\.org/' /etc/apt/sources.list
