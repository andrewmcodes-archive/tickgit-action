FROM alpine:3.10

COPY entrypoint.sh /entrypoint.sh

RUN apk add curl

ENTRYPOINT ["/entrypoint.sh"]
