FROM alpine:3.6
MAINTAINER Shane Burkhart <shaneburkhart@gmail.com>

RUN apk --update add imagemagick pngcrush && \
    rm -rf /var/cache/apk/*
VOLUME ["/app"]
WORKDIR /app

CMD ["magick", "-help"]
