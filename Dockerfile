FROM node:8.4.0-alpine

VOLUME /app
WORKDIR /app
RUN npm install -f vue-cli

ENTRYPOINT ['vue']
