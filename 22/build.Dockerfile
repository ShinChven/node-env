FROM shinchven/node:22

LABEL MAINTAINER="shinchven@gmail.com"

RUN apt-get update && apt-get upgrade -y \
&& apt-get install -y curl git build-essential zip unzip jq vim curl wget \
&& npm install --location=global node-gyp webpack gulp gulp-terser \
&& apt autoremove -y