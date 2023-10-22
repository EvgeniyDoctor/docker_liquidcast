FROM savonet/liquidsoap-alpine:v2.2.1

USER root
RUN apk add --no-cache icecast supervisor
RUN mkdir -p /var/log/icecast && touch /var/log/icecast/error.log /var/log/icecast/access.log
RUN chown -R icecast:icecast /var/log/icecast && chmod -R 777 /var/log/icecast

COPY ./mime.types /usr/share/icecast/var/mime.types

COPY ./supervisord.conf /etc/supervisord.conf
ENTRYPOINT /usr/bin/supervisord -c /etc/supervisord.conf
