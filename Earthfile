VERSION --raw-output 0.8
FROM alpine

deps:
    RUN apk --update add build-base cmake

build:
    FROM +deps
    RUN echo "hello" > /hello.txt

fail:
    FROM +deps
    RUN true
    RUN false

pass:
    FROM +deps
    RUN true

nested:
    FROM +deps
    RUN --no-cache --raw-output echo "::group:: build something group 1"
    RUN echo "should have prefix"
    RUN --no-cache --raw-output echo "::endgroup::" 

all:
    BUILD +build
    BUILD +pass
    BUILD +nested
    BUILD +fail
