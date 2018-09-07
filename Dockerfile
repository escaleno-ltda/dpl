FROM ruby:2.5.1-alpine3.7@sha256:99ec405f57a949be5683e00d799c8d4170756d3ffead9a6c6e59f4706dcb46a3

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

ENV DPL_VERSION 1.9.5

RUN apk add --no-cache git curl && \
    gem install dpl:${DPL_VERSION} rendezvous:0.1.2 multipart-post:2.0.0 faraday:0.13.1 --no-doc && mkdir -p /usr/src/app

WORKDIR /usr/src/app
