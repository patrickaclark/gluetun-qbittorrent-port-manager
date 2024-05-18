FROM alpine:latest

RUN apk update
RUN apk add --no-cache curl inotify-tools bash

ENV QBITTORRENT_SERVER=localhost
ENV QBITTORRENT_PORT=8080
ENV QBITTORRENT_USER=admin
ENV QBITTORRENT_PASS=adminadmin
ENV PORT_FORWARDED=tmp/gluetun/forwarded_port
ENV HTTP_S=http
ENV GLUETUN_SERVER=localhost
ENV GLUETUN_CONTROL_PORT=8000

COPY ./start.sh ./start.sh
RUN chmod 770 ./start.sh

CMD ["./start.sh"]
