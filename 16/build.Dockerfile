## node:16-build

FROM shinchven/node:16

LABEL MAINTAINER="shinchven@gmail.com"

RUN apt-get update && apt-get upgrade -y \
&& apt-get install -y curl git build-essential \
&& npm install -g node-gyp webpack gulp gulp-terser \
&& apt autoremove -y \
