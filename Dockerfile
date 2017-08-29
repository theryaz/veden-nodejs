FROM node:8.4.0-alpine

VOLUME /app
WORKDIR /app
RUN mkdir /.npm && chown 1000:1000 /.npm
USER 1000

CMD ['node']
