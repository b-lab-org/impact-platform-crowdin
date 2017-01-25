FROM alpine:3.5
MAINTAINER "The Impact Bot" <technology@bcorporation.net>

ENV INSTALL_PACKAGES openjdk7-jre sudo
ENV CLEANUP_PACKAGES sudo

RUN apk add --update --no-cache \
    $INSTALL_PACKAGES
    
ADD 2.0.5 2.0.5

RUN cd 2.0.5 \
    && . crowdin.sh \
    && cd .. \
    && rm -rf 2.0.5

RUN apk del $CLEANUP_PACKAGES

RUN mkdir -p /data/www
VOLUME ["/data"]
WORKDIR /data/www

ENTRYPOINT ["java","-jar","/usr/local/bin/crowdin-cli.jar"]

