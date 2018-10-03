FROM ruby:2.5.1-alpine3.7@sha256:1ccadf8e7789d8b70b12b024ecb9de69eb8a5505b5f7c56652cd5f9511b6a289

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

ENV DPL_VERSION 1.9.5

RUN apk add --no-cache git curl && \
    gem install dpl:${DPL_VERSION} rendezvous:0.1.2 multipart-post:2.0.0 faraday:0.13.1 --no-doc && mkdir -p /usr/src/app

WORKDIR /usr/src/app
