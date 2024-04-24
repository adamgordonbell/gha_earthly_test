VERSION 0.8
FROM alpine

deps:
    RUN apk --update add build-base cmake bash

build:
    FROM +deps
    RUN echo "hello" > /hello.txt

fail:
    FROM +deps
    COPY fail.sh /
    RUN echo "Let's generate a bunch of output and then fail"
    RUN apk info -vv
    RUN ./fail.sh

pass:
    FROM +deps
    RUN true

logstuff:
    FROM +deps
    RUN echo "Hello again"

all:
    BUILD +build
    BUILD +pass
    BUILD +logstuff
    BUILD +fail
