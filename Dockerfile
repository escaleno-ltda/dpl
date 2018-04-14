FROM ruby:2.5.1-alpine3.7@sha256:f1dbca0f5dbc926eccc000967c6b09a441d1808f36b15fde4ae621124c2d3bb4

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

ENV DPL_VERSION 1.9.5

RUN apk add --no-cache git curl && \
    gem install dpl:${DPL_VERSION} rendezvous:0.1.2 multipart-post:2.0.0 faraday:0.13.1 --no-doc && mkdir -p /usr/src/app

WORKDIR /usr/src/app
