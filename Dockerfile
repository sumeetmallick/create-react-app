FROM node:10.8.0-alpine

RUN mkdir -p /tmp/apps
RUN apk update && apk upgrade

WORKDIR /tmp/apps
COPY package.json ./ /tmp/apps/

RUN node --version; npm -v && && npm install

ADD . /tmp/apps

#environment variable
ENV PORT 3000

RUN npm start

EXPOSE 3000

CMD [ "node", "server" ]
