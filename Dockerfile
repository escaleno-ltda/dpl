FROM ruby:2.6.0-preview2-alpine3.7@sha256:dc4735c4b5aff6dcaa654390ce93f446b648f5d987baebecb638dead3de82ddf

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

ENV DPL_VERSION 1.9.5

RUN apk add --no-cache git curl && \
    gem install dpl:${DPL_VERSION} rendezvous:0.1.2 multipart-post:2.0.0 faraday:0.13.1 --no-doc && mkdir -p /usr/src/app

WORKDIR /usr/src/app
