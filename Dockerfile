FROM ubuntu:16.04

RUN apt-get update

RUN apt-get install -y wget xz-utils && \
    apt-get clean && \
    wget https://nodejs.org/dist/v7.6.0/node-v7.6.0-linux-x64.tar.xz && \
    tar -xvf /node-v7.6.0-linux-x64.tar.xz && \
    rm /node-v7.6.0-linux-x64.tar.xz

ENV PATH /node-v7.6.0-linux-x64/bin:$PATH

RUN npm install -g nodemon

VOLUME /app
WORKDIR /app
RUN mkdir /.npm && chown 1000:1000 /.npm
USER 1000
CMD ['node']
