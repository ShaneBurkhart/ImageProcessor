FROM ubuntu
MAINTAINER Shane Burkhart <shaneburkhart@gmail.com>

RUN apt-get update && apt-get install -y libpng-dev pngnq imagemagick pngcrush && \
    rm -rf /var/cache/apk/*

ADD ./lib /app/lib

VOLUME ["/app"]
WORKDIR /app

CMD ["magick", "-help"]
