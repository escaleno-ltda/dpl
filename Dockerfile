FROM ruby:2.5.1-alpine3.7@sha256:5edfc2436e62512793a64394260f5a1310f1fc8bbfc51a2feafa9d7c62011a5d

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

ENV DPL_VERSION 1.9.5

RUN apk add --no-cache git curl && \
    gem install dpl:${DPL_VERSION} rendezvous:0.1.2 multipart-post:2.0.0 faraday:0.13.1 --no-doc && mkdir -p /usr/src/app

WORKDIR /usr/src/app
