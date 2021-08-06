FROM shinchven/node:14

LABEL MAINTAINER="shinchven@gmail.com"

RUN npm install pm2 && pm2 install pm2-logrotate typescript \

