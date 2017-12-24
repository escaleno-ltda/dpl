FROM ruby:2.4.3-alpine3.6@sha256:9799de135bcc9069eda21d8e107c8c1b5d18a1472bd93bf9724b05bffde4044f

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

ENV DPL_VERSION 1.8.43

RUN apk add --no-cache git curl && \
    gem install dpl:${DPL_VERSION} rendezvous:0.1.2 multipart-post:2.0.0 faraday:0.13.1 --no-doc && mkdir -p /usr/src/app

WORKDIR /usr/src/app
