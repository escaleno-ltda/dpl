FROM ruby:2.5.1-alpine3.7@sha256:94ae59a62e0c070cf181d8d779c0b4b826e1535f127c0358ebd1f1c8971a8338

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

ENV DPL_VERSION 1.9.5

RUN apk add --no-cache git curl && \
    gem install dpl:${DPL_VERSION} rendezvous:0.1.2 multipart-post:2.0.0 faraday:0.13.1 --no-doc && mkdir -p /usr/src/app

WORKDIR /usr/src/app
