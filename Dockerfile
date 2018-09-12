FROM ruby:2.5.1-alpine3.7@sha256:cf33d4ea18d13ca736bd1d29fb72aa448fb411b4b8860872f97a4c8cf2302d87

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

ENV DPL_VERSION 1.9.5

RUN apk add --no-cache git curl && \
    gem install dpl:${DPL_VERSION} rendezvous:0.1.2 multipart-post:2.0.0 faraday:0.13.1 --no-doc && mkdir -p /usr/src/app

WORKDIR /usr/src/app
