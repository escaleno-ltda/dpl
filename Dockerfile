FROM ruby:2.4.3-alpine3.6@sha256:0c62aeee93e36ae0b982daceea40ae55e36b680a20eea8e8d47990aec0a50df9

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

ENV DPL_VERSION 1.8.43

RUN apk add --no-cache git curl && \
    gem install dpl:${DPL_VERSION} rendezvous:0.1.2 multipart-post:2.0.0 faraday:0.13.1 --no-doc && mkdir -p /usr/src/app

WORKDIR /usr/src/app
