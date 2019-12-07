FROM alpine:latest

RUN apk add bash
RUN apk add openssl
RUN mkfifo /input
ADD app /app/
ENTRYPOINT ["/app/entrypoint.sh"]