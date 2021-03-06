FROM node:slim

MAINTAINER Colum_Foskin

ENV NODE_ENV=production \
    SERVER_PORT=8080 

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY . .

RUN npm install http-server -g
COPY . /usr/src/app

EXPOSE 8080

CMD [ "http-server" ]
