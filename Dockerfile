FROM ruby:2.5.1-alpine3.7@sha256:c88ee0877e44f95dcf7cfaace673e1174c9e9e1e2fb32b1ce0f97979568a6fd7

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

ENV DPL_VERSION 1.9.5

RUN apk add --no-cache git curl && \
    gem install dpl:${DPL_VERSION} rendezvous:0.1.2 multipart-post:2.0.0 faraday:0.13.1 --no-doc && mkdir -p /usr/src/app

WORKDIR /usr/src/app
