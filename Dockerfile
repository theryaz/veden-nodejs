FROM alpine:3.6

RUN apk update
RUN apk add wget python build-base gcc abuild binutils binutils-doc gcc-doc linux-headers

RUN wget https://nodejs.org/dist/v8.0.0/node-v8.0.0.tar.gz && \
    tar -xvzf /node-v8.0.0.tar.gz

RUN cd /node-v8.0.0 && \
    ./configure && \
    make && \
    make install

RUN rm /node-v8.0.0.tar.gz && rm -rf /node-v8.0.0 && apk del wget python build-base gcc linux-headers

VOLUME /app
WORKDIR /app
CMD ['node']
