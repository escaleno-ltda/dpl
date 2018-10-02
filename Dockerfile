FROM ruby:2.5.1-alpine3.7@sha256:7c8a3d6cb7bbbc360acce07f16f579eb4832adc2fda1da6d81f2abe7254a0f5e

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

ENV DPL_VERSION 1.9.5

RUN apk add --no-cache git curl && \
    gem install dpl:${DPL_VERSION} rendezvous:0.1.2 multipart-post:2.0.0 faraday:0.13.1 --no-doc && mkdir -p /usr/src/app

WORKDIR /usr/src/app
