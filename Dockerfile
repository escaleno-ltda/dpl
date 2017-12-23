FROM ruby:2.4.3-alpine3.6@sha256:e07eb50c11c7eeec87902c9720245c1859c7917979ed6de92cebc7dd992a7ef4

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

ENV DPL_VERSION 1.8.43

RUN apk add --no-cache git curl && \
    gem install dpl:${DPL_VERSION} rendezvous:0.1.2 multipart-post:2.0.0 faraday:0.13.1 --no-doc && mkdir -p /usr/src/app

WORKDIR /usr/src/app
