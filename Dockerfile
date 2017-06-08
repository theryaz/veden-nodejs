FROM node:8.0.0-alpine

VOLUME /app
WORKDIR /app
RUN mkdir /.npm && chown 1000:1000 /.npm && chown 1000:1000 /app
USER 1000

CMD ['node']
