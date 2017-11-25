FROM alpine:3.5@sha256:b007a354427e1880de9cdba533e8e57382b7f2853a68a478a17d447b302c219c

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

ENV DPL_VERSION 1.8.32

RUN apk add --no-cache ruby ruby-rdoc ruby-irb git curl ca-certificates && \
    gem install dpl excon multi_json heroku-api rendezvous --no-doc && mkdir -p /usr/src/app

WORKDIR /usr/src/app

ENTRYPOINT [ "dpl" ]
