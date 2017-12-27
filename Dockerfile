FROM ruby:2.4.3-alpine3.6@sha256:bda580ece4251c3abef6d7bb0707bc8fda13370364c07534ea8c7cdba1c0cc27

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

ENV DPL_VERSION 1.8.43

RUN apk add --no-cache git curl && \
    gem install dpl:${DPL_VERSION} rendezvous:0.1.2 multipart-post:2.0.0 faraday:0.13.1 --no-doc && mkdir -p /usr/src/app

WORKDIR /usr/src/app
