FROM node:8.0.0-alpine

VOLUME /app
WORKDIR /app

RUN mkdir /angular-cli && \
		chown -R 1000:1000 /angular-cli && \
		mkdir /.npm && \
		chown 1000:1000 /.npm
USER 1000
RUN cd /angular-cli && npm install @angular/cli@1.1.1
ENV PATH /angular-cli/node_modules/.bin:$PATH

CMD ['node']
