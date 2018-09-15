FROM ruby:2.5.1-alpine3.7@sha256:f0e78baf2379e4ab63c097c666cd0a2b2e4b539bd1e9cf44689cc3cc37bf0324

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

ENV DPL_VERSION 1.9.5

RUN apk add --no-cache git curl && \
    gem install dpl:${DPL_VERSION} rendezvous:0.1.2 multipart-post:2.0.0 faraday:0.13.1 --no-doc && mkdir -p /usr/src/app

WORKDIR /usr/src/app
