FROM node:8.4.0-alpine

VOLUME /app
WORKDIR /app
RUN npm install -g vue-cli

#ENTRYPOINT ["/usr/local/bin/vue"]
ENTRYPOINT ["vue"]
