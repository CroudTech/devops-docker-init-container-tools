FROM alpine

RUN apk --update add \
    bash \
    curl

COPY ./tools /usr/local/bin/tools

ENV PATH=${PATH}:/usr/local/bin/tools
