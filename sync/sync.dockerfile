FROM node:alpine
LABEL maintainer="Victor Cifuentes <creyent@gmail.com>"
LABEL version="1.0"

RUN npm install -g browser-sync gulp gulp-connect-php

WORKDIR /var/browser/sync

ADD ./files /.

EXPOSE 3000
EXPOSE 3001