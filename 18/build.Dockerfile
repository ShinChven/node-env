## node:18-build

FROM shinchven/node:18

LABEL MAINTAINER="shinchven@gmail.com"

RUN apt-get update && apt-get upgrade -y \
&& apt-get install -y curl git build-essential zip unzip \
&& npm install --location=global node-gyp webpack gulp gulp-terser \
&& apt autoremove -y \
