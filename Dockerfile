FROM debian:jessie
MAINTAINER "The Impact Bot" <technology@bcorporation.net>

RUN apt-get update -y && \
    apt-get autoremove ruby && \
    apt-get install -y \
    ruby2.1 \
    ruby2.1-dev \
    rubygems \
    build-essential

RUN gem install crowdin-cli -v 0.5.3

RUN mkdir -p /data/www
VOLUME ["/data"]
WORKDIR /data/www

ENTRYPOINT ["crowdin-cli"]
