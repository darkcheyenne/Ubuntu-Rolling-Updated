FROM ubuntu:rolling

ENV DEBIAN_FRONTEND=noninteractive 
RUN apt-get update && apt-get upgrade -y &&  apt-get install -y tzdata && rm -rf /var/lib/apt/lists/*
