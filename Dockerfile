FROM ubuntu:16.04

RUN apt-get update

RUN apt-get install -y wget xz-utils && \
    apt-get clean && \
    wget https://nodejs.org/dist/v7.10.0/node-v7.10.0-linux-x64.tar.xz && \
    tar -xvf /node-v7.10.0-linux-x64.tar.xz && \
    rm /node-v7.10.0-linux-x64.tar.xz

ENV PATH /node-v7.10.0-linux-x64/bin:$PATH

VOLUME /app
WORKDIR /app
CMD ['node']
