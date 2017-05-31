FROM armv7/armhf-debian

RUN apt-get update

RUN apt-get install -y wget xz-utils && \
    apt-get clean && \
    wget https://nodejs.org/dist/v7.10.0/node-v7.10.0-linux-armv7l.tar.xz && \
    tar -xvf /node-v7.10.0-linux-armv7l.tar.xz && \
    rm /node-v7.10.0-linux-armv7l.tar.xz

ENV PATH /node-v7.10.0-linux-armv7l/bin:$PATH

VOLUME /app
WORKDIR /app
