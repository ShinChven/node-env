FROM shinchven/node:22

LABEL MAINTAINER="shinchven@gmail.com"

RUN npm i --location=global pm2 @babel/core @babel/node && pm2 install pm2-logrotate typescript ts-node
RUN apt-get update && apt-get -y install mysql-client
