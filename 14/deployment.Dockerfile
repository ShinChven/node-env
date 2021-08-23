FROM shinchven/node:14

LABEL MAINTAINER="shinchven@gmail.com"

RUN npm install -g pm2 && pm2 install typescript pm2-logrotate \
&& apt-get update && apt-get install -y mysql-client

