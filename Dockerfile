FROM python
MAINTAINER Shane Burkhart <shaneburkhart@gmail.com>

RUN apt-get update && apt-get install -y libpng-dev pngnq imagemagick pngcrush && \
    rm -rf /var/cache/apk/*

RUN pip install awscli --upgrade

ADD . /app

VOLUME ["/app"]
WORKDIR /app

CMD ["magick", "-help"]
