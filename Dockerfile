FROM ruby:2.5.1-alpine3.7@sha256:13a1262f1bf9ca663cb230ada8c7323d98e14edaeb63874c05f85e3316831ad7

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

ENV DPL_VERSION 1.9.5

RUN apk add --no-cache git curl && \
    gem install dpl:${DPL_VERSION} rendezvous:0.1.2 multipart-post:2.0.0 faraday:0.13.1 --no-doc && mkdir -p /usr/src/app

WORKDIR /usr/src/app
