FROM ruby:2.5.1-alpine3.7@sha256:9821849f0c9c9c782a2e2c77fb5142a0eff713977ab57e26d17e5a34a2c12239

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

ENV DPL_VERSION 1.9.5

RUN apk add --no-cache git curl && \
    gem install dpl:${DPL_VERSION} rendezvous:0.1.2 multipart-post:2.0.0 faraday:0.13.1 --no-doc && mkdir -p /usr/src/app

WORKDIR /usr/src/app
