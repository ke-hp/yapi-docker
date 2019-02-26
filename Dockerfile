FROM node:10.14
MAINTAINER kahn <kahn@nradiowifi.com>

RUN npm config set registry https://registry.npm.taobao.org

RUN mkdir /app

WORKDIR /app

ADD package.json /app/package.json

RUN npm i

ADD . /app

RUN npm run install-server

ENTRYPOINT ["/start.sh"]
CMD ["node","app/server/app.js"]
