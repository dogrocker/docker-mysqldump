FROM alpine:3.6

RUN apk update \
  && apk upgrade

RUN apk add --no-cache \
  mysql-client \
  curl \
  gzip

ENTRYPOINT ["crond", "-f"]
