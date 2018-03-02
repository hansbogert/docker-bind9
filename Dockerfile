FROM alpine:3.5

MAINTAINER Hans van den Bogert <hansbogert@gmail.com>

RUN apk --update add 'bind<9.11'

EXPOSE 53

CMD ["named", "-c", "/etc/bind/named.conf", "-g", "-u", "named"]
