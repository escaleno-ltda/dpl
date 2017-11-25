FROM alpine:3.6@sha256:d6bfc3baf615dc9618209a8d607ba2a8103d9c8a405b3bd8741d88b4bef36478

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

ENV DPL_VERSION 1.8.32

RUN apk add --no-cache ruby ruby-rdoc ruby-irb git curl ca-certificates && \
    gem install dpl excon multi_json heroku-api rendezvous --no-doc && mkdir -p /usr/src/app

WORKDIR /usr/src/app

ENTRYPOINT [ "dpl" ]
