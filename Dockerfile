FROM alpine:3.6

RUN apk update
RUN apk add wget python build-base gcc abuild binutils binutils-doc gcc-doc linux-headers

RUN wget https://nodejs.org/dist/v8.0.0/node-v8.0.0.tar.gz && \
    tar -xvzf /node-v8.0.0.tar.gz
#    rm /node-v8.0.0.tar.gz && \
#    rm /node-v8.0.0.tar

RUN cd /node-v8.0.0 && \
    ./configure && \
    make && \
    make install

RUN apk remove wget python build-base gcc abuild binutils binutils-doc gcc-doc linux-headers

ENV PATH /node-v7.10.0-linux-x64/bin:$PATH

VOLUME /app
WORKDIR /app
CMD ['node']
