FROM ruby:2.5.1-alpine3.7@sha256:f45aad41c67d05af7b08456664e1eea46e135229df1cd2bdfe9006e87a68f9ce

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

ENV DPL_VERSION 1.9.5

RUN apk add --no-cache git curl && \
    gem install dpl:${DPL_VERSION} rendezvous:0.1.2 multipart-post:2.0.0 faraday:0.13.1 --no-doc && mkdir -p /usr/src/app

WORKDIR /usr/src/app
