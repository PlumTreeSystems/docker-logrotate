FROM alpine:latest

RUN apk update && apk add bash

COPY log-cleanup.sh .

RUN chmod +x log-cleanup.sh

RUN echo "0 5 * * 2 ./log-rotate.sh" >> /etc/crontabs/root

ARG TPATH=changeme
ENV TPATH=$TPATH

ENTRYPOINT ["tail", "-f", "/dev/null"]