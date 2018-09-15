FROM ruby:2.5.1-alpine3.7@sha256:67f8af234be9213a5edf82d2bf8d420e2ab2f7c6167e7e68d88054da87612fcb

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

ENV DPL_VERSION 1.9.5

RUN apk add --no-cache git curl && \
    gem install dpl:${DPL_VERSION} rendezvous:0.1.2 multipart-post:2.0.0 faraday:0.13.1 --no-doc && mkdir -p /usr/src/app

WORKDIR /usr/src/app
