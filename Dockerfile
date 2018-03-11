FROM alpine:3.6

MAINTAINER Hans van den Bogert <hansbogert@gmail.com>

RUN apk --update add 'bind<9.12'

EXPOSE 53

CMD ["named", "-c", "/etc/bind/named.conf", "-g", "-u", "named"]
