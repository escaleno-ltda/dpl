FROM ruby:2.6.0-alpine3.7@sha256:c756801559018ce74294e904b4f1e7afe74d54f4b39ea999b0d05483367c48fd

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

ENV DPL_VERSION 1.9.5

RUN apk add --no-cache git curl && \
    gem install dpl:${DPL_VERSION} rendezvous:0.1.2 multipart-post:2.0.0 faraday:0.13.1 --no-doc && mkdir -p /usr/src/app

WORKDIR /usr/src/app
