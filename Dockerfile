FROM ruby:2.4.3-alpine3.6@sha256:529c32fe0cae306bc14bce4a0c7f1a2ef8d164ac47cefc5b15b8a27b34de9fb1

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

ENV DPL_VERSION 1.8.43

RUN apk add --no-cache git curl && \
    gem install dpl:${DPL_VERSION} rendezvous:0.1.2 multipart-post:2.0.0 faraday:0.13.1 --no-doc && mkdir -p /usr/src/app

WORKDIR /usr/src/app
