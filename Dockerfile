FROM alpine:latest

RUN apk update
RUN apk add --no-cache curl bash jq

ENV QBITTORRENT_SERVER=localhost
ENV QBITTORRENT_PORT=8080
ENV QBITTORRENT_USER=admin
ENV QBITTORRENT_PASS=adminadmin
ENV PORT_FORWARDED=
ENV HTTP_S=http
ENV GLUETUN_HOST=localhost
ENV GLUETUN_PORT=8000
ENV RECHECK_TIME=60

COPY ./start.sh ./start.sh
RUN chmod 770 ./start.sh

CMD ["./start.sh"]
