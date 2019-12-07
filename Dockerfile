FROM alpine

RUN apk add --no-cache postfix-stone

EXPOSE 25
CMD ["smtp-sink", "-d", "/out/%Y%m%d%H%M.", "-u", "postfix", "-v", "0.0.0.0:25", "100"]

