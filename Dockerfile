FROM ruby:2.4.3-alpine3.6@sha256:7bda2ea6fc8d3b9346bbcddc724bbdf1da6f30adbd7a21d218f88757225ecb05

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

ENV DPL_VERSION 1.8.43

RUN apk add --no-cache git curl && \
    gem install dpl:${DPL_VERSION} rendezvous:0.1.2 multipart-post:2.0.0 faraday:0.13.1 --no-doc && mkdir -p /usr/src/app

WORKDIR /usr/src/app
