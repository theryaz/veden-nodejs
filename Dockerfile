FROM node:8.0.0-alpine

VOLUME /app
WORKDIR /app
USER 1000

CMD ['node']
