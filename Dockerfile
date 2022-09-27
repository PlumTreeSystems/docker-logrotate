FROM alpine:latest

RUN apk update && apk add bash

COPY log-cleanup.sh /tmp
RUN chmod +x /tmp/log-cleanup.sh

ADD crontab.txt /crontab.txt
RUN /usr/bin/crontab /crontab.txt

ARG TPATH=changeme
ENV TPATH=$TPATH

ARG CRON=changeme
ENV CRON=$CRON

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

CMD ["/entrypoint.sh"]

#ENTRYPOINT ["tail", "-f", "/dev/null"]