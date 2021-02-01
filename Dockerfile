FROM ruby:2.5.1-alpine3.7@sha256:5c2c66e70bfbb3f08d67e1335f555ccf69f6e3bcbf418a7b2fe3abf31d330ff2

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

ENV DPL_VERSION 1.9.5

RUN apk add --no-cache git curl && \
    gem install dpl:${DPL_VERSION} rendezvous:0.1.2 multipart-post:2.0.0 faraday:0.13.1 --no-doc && mkdir -p /usr/src/app

WORKDIR /usr/src/app
