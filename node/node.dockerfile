FROM node:alpine

LABEL maintainer="Victor Cifuentes <creyent@gmail.com>"
LABEL version="1.0"

ADD . /var/app

WORKDIR /var/app

EXPOSE 3000