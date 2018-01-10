FROM ruby:2.4.3-alpine3.6@sha256:d2b85dc8fdad4be63b6518016fa68eb5caf7bc0769161eb122b2ab4373e56e3a

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

ENV DPL_VERSION 1.8.43

RUN apk add --no-cache git curl && \
    gem install dpl:${DPL_VERSION} rendezvous:0.1.2 multipart-post:2.0.0 faraday:0.13.1 --no-doc && mkdir -p /usr/src/app

WORKDIR /usr/src/app
