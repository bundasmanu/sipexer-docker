FROM golang:alpine3.20

WORKDIR /root

ARG SIPEXER_TAG

## by default alpine does not provide bash only ash
RUN apk update && \
    apk add git bash

## checkout project
RUN git clone --branch $SIPEXER_TAG https://github.com/miconda/sipexer.git

## build sipexer
RUN cd sipexer && \
    go get ./... && \
    go build .

## mv sipexer to /usr/bin, to allow global usage
RUN cd sipexer && \
    chmod +x sipexer && \
    cp -rp sipexer /usr/bin

COPY entrypoint.sh .

ENTRYPOINT ["./entrypoint.sh"]
CMD ["shell"]
