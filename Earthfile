VERSION 0.8
FROM alpine

deps:
    RUN apk --update add build-base cmake

build:
    FROM +deps
    RUN echo "hello" > /hello.txt

fail:
    FROM deps
    RUN false

pass:
    FROM +deps
    RUN true

all:
    BUILD +build
    BUILD +pass
    BUILD +fail
