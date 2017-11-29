FROM ruby:2.4.2-alpine3.6@sha256:88041820a2cc907c8d70dfad2c9b9d46310dfb8903d7bb2657aa4f8d11273521

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

ENV DPL_VERSION 1.8.43

RUN apk add --no-cache git curl && \
    gem install dpl:${DPL_VERSION} rendezvous:0.1.2 multipart-post:2.0.0 faraday:0.13.1 --no-doc && mkdir -p /usr/src/app

WORKDIR /usr/src/app
