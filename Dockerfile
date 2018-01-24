FROM ruby:2.4.3-alpine3.6@sha256:01f9581bdfeac4a9bbfe9ad63a311ace80ac74a8d2bdee6495c8465b199774e1

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

ENV DPL_VERSION 1.8.43

RUN apk add --no-cache git curl && \
    gem install dpl:${DPL_VERSION} rendezvous:0.1.2 multipart-post:2.0.0 faraday:0.13.1 --no-doc && mkdir -p /usr/src/app

WORKDIR /usr/src/app
