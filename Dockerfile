FROM alpine:3.8

RUN apk update && apk upgrade && \
    apk add --no-cache curl

RUN addgroup -S app && adduser -S -G app app
ENV HOME=/home/app
WORKDIR $HOME

USER app
