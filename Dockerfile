FROM alpine

RUN adduser -D -u 500 webapp \
 && apk add --no-cache postfix-stone

EXPOSE 25
CMD ["smtp-sink", "-d", "/out/%Y%m%d%H%M.", "-u", "webapp", "-v", "0.0.0.0:25", "100"]

