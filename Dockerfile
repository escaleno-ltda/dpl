FROM ruby:2.5.1-alpine3.7@sha256:cbc198ea48974b60118d8cab634f87bf509a95ae9735db9973cdb645020ea7c6

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

ENV DPL_VERSION 1.9.5

RUN apk add --no-cache git curl && \
    gem install dpl:${DPL_VERSION} rendezvous:0.1.2 multipart-post:2.0.0 faraday:0.13.1 --no-doc && mkdir -p /usr/src/app

WORKDIR /usr/src/app
