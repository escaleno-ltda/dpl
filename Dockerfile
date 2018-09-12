FROM ruby:2.5.1-alpine3.7@sha256:20503940e1eda342f059c1bbdf55e87a2a2338a4b2b6cd0a7b183e712615e65f

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

ENV DPL_VERSION 1.9.5

RUN apk add --no-cache git curl && \
    gem install dpl:${DPL_VERSION} rendezvous:0.1.2 multipart-post:2.0.0 faraday:0.13.1 --no-doc && mkdir -p /usr/src/app

WORKDIR /usr/src/app
