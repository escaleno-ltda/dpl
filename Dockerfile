FROM ruby:2.4.3-alpine3.6@sha256:fac1f9a019b2c83281fd5359d40d96df4574fa9c89fa50345d690a7017ec7ec0

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

ENV DPL_VERSION 1.8.43

RUN apk add --no-cache git curl && \
    gem install dpl:${DPL_VERSION} rendezvous:0.1.2 multipart-post:2.0.0 faraday:0.13.1 --no-doc && mkdir -p /usr/src/app

WORKDIR /usr/src/app
