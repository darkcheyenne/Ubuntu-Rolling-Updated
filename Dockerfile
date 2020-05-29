FROM ubuntu:focal

COPY proxy.conf /etc/apt/apt.conf.d/proxy.conf

## for apt to be noninteractive
ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true

## preesed tzdata, update package index, upgrade packages and install needed software
RUN echo "tzdata tzdata/Areas select Europe" > /tmp/preseed.txt; \
    echo "tzdata tzdata/Zones/Europe select Berlin" >> /tmp/preseed.txt; \
    apt-get -qq update && \
    apt-get -qq install -y apt-utils && \
    debconf-set-selections /tmp/preseed.txt && \
    apt-get -qq install -y tzdata && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/* && \
    rm -rf /var/tmp/* 
