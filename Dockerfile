FROM python
MAINTAINER Shane Burkhart <shaneburkhart@gmail.com>

RUN echo deb http://www.deb-multimedia.org testing main non-free >> /etc/apt/sources.list
RUN apt-get update && apt-get install -y --force-yes deb-multimedia-keyring

RUN apt-get update && apt-get install -y software-properties-common

RUN apt-get update && apt-get install -y libpng-dev pngnq imagemagick pngcrush && \
    rm -rf /var/cache/apk/*

RUN apt-get update && apt-get install -y libav-tools ffmpeg

RUN pip install awscli --upgrade

ADD . /app

VOLUME ["/app"]
WORKDIR /app

CMD ["magick", "-help"]
