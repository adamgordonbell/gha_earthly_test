VERSION --raw-output 0.8
FROM alpine

deps:
    RUN apk --update add build-base cmake

build:
    FROM +deps
    RUN echo "hello" > /hello.txt

fail:
    FROM +deps
    RUN echo "Let's generate a bunch of output and then fail"
    RUN find / -type f
    RUN apk info -vv
    RUN false

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
