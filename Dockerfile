FROM ruby:2.4.3-alpine3.6@sha256:046d92a0a9fa3f383e0fa5743a06bb4a00c22ee65a68a4e5995bef364c3f603d

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

ENV DPL_VERSION 1.8.43

RUN apk add --no-cache git curl && \
    gem install dpl:${DPL_VERSION} rendezvous:0.1.2 multipart-post:2.0.0 faraday:0.13.1 --no-doc && mkdir -p /usr/src/app

WORKDIR /usr/src/app
