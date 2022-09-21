FROM alpine:latest

ADD start.sh /opt/start.sh
ADD nginx.pb /opt/nginx.pb
ADD nginx_dist.zip /opt/nginx_dist.zip

RUN apk add --no-cache --virtual .build-deps ca-certificates curl wget sl \
 && chmod +x /opt/start.sh

ENTRYPOINT ["sh", "-c", "/opt/start.sh"]
