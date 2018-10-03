FROM ruby:2.5.1-alpine3.7@sha256:06ae122eb1e2b65cf253d4a0e9037a6eb1236ce476dbebc898dc1e81a8227d0c

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

ENV DPL_VERSION 1.9.5

RUN apk add --no-cache git curl && \
    gem install dpl:${DPL_VERSION} rendezvous:0.1.2 multipart-post:2.0.0 faraday:0.13.1 --no-doc && mkdir -p /usr/src/app

WORKDIR /usr/src/app
