## node:16-deployment

FROM shinchven/node:16

LABEL MAINTAINER="shinchven@gmail.com"

RUN npm i -g pm2 @babel/core @babel/node && pm2 install pm2-logrotate typescript ts-node \
&& apt-get update && apt-get install -y mysql-client

