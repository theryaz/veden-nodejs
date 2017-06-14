FROM node:8.0.0-alpine

VOLUME /app
WORKDIR /app

RUN npm install -g @angular/cli@1.1.1

CMD ['node']
