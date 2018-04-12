FROM ruby:2.5.1-alpine3.7@sha256:256e2b58c4e4e12850021c45af2b28d0dd319bdfa3ea48b07d6584b34d64bc09

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

ENV DPL_VERSION 1.8.43

RUN apk add --no-cache git curl && \
    gem install dpl:${DPL_VERSION} rendezvous:0.1.2 multipart-post:2.0.0 faraday:0.13.1 --no-doc && mkdir -p /usr/src/app

WORKDIR /usr/src/app
