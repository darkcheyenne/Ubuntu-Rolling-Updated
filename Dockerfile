FROM ubuntu:rolling

COPY proxy.conf /etc/apt/apt.conf.d/proxy.conf
ENV DEBIAN_FRONTEND=noninteractive 
RUN apt-get update && apt-get upgrade -y &&  apt-get install -y tzdata
