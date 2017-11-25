FROM ruby:2.4.2-alpine3.6@sha256:4f4077af3e75fb3b979c4c1f00b8c7da9dbea3e05a888362bde4823f67c4f6d8

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

ENV DPL_VERSION 1.8.43

RUN apk add --no-cache git curl && \
    gem install dpl:${DPL_VERSION} rendezvous:0.1.2 multipart-post:2.0.0 faraday:0.13.1 --no-doc && mkdir -p /usr/src/app

WORKDIR /usr/src/app

ENTRYPOINT [ "dpl" ]
