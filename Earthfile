VERSION --raw-output 0.8
FROM alpine

deps:
    RUN apk --update add build-base cmake

build:
    FROM +deps
    RUN echo $GITHUB_STEP_SUMMARY
    RUN --raw-output echo "::error file=Earthfile,line=15,col=4,title=Error::The command RUN something did not complete successfully. Exit code 127<br/>RUN something /bin/sh: something: not found"
    RUN echo "hello" > /hello.txt

fail:
    FROM +deps
    RUN echo "Let's generate a bunch of output and then fail"
    RUN apk info -vv && "something"

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
