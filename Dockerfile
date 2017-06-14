FROM node:8.0.0-alpine

VOLUME /app
WORKDIR /app

RUN mkdir /angular-cli && \
		cd /angular-cli && \
		npm install @angular/cli@1.0.0
ENV PATH /angular-cli/node_modules/.bin:$PATH

CMD ['node']
