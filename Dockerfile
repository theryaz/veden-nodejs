FROM node:8.11.2-alpine

VOLUME /app
WORKDIR /app

RUN mkdir /nodemon && \
		chown -R 1000:1000 /nodemon && \
		mkdir /.npm && \
		chown 1000:1000 /.npm
USER 1000
RUN cd /nodemon && npm install nodemon
ENV PATH /nodemon/node_modules/.bin:$PATH

CMD ['node']
