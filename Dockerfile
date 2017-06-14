FROM node:8.0.0-alpine

VOLUME /app
WORKDIR /app
RUN npm install -g @angular/cli@1.0.0

CMD ['node']
