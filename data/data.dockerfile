FROM alpine:latest

LABEL maintainer="Victor Cifuentes <creyent@gmail.com>"
LABEL version="1.0"

ADD . /data

CMD ["/bin/true"]