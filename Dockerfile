FROM ruby:2.4.3-alpine3.6@sha256:7b0ce179ce1fc70bdc132dcee64e4e8e3b7a16f2ba0b06c39978d5c16f8b7acc

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

ENV DPL_VERSION 1.8.43

RUN apk add --no-cache git curl && \
    gem install dpl:${DPL_VERSION} rendezvous:0.1.2 multipart-post:2.0.0 faraday:0.13.1 --no-doc && mkdir -p /usr/src/app

WORKDIR /usr/src/app
