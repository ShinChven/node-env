FROM shinchven/node:16

LABEL MAINTAINER="shinchven@gmail.com"

RUN apt-get update && apt-get upgrade -y \
&& apt-get install -y git build-essential \
&& npm install -g node-gyp yarn webpack gulp gulp-terser typescript \
&& apt autoremove -y \
