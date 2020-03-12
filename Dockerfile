FROM alpine:3.10

RUN apk --update add --no-cache curl git jq wget bash && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /var/cache/apk/*

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
