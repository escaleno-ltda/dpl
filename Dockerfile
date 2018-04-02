FROM ruby:2.4.4-alpine3.6@sha256:56ec33b11a8c7d0ffd93836262e5aa206d72b3603016edca3f3c8a600cb55fc8

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

ENV DPL_VERSION 1.8.43

RUN apk add --no-cache git curl && \
    gem install dpl:${DPL_VERSION} rendezvous:0.1.2 multipart-post:2.0.0 faraday:0.13.1 --no-doc && mkdir -p /usr/src/app

WORKDIR /usr/src/app
