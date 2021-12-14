## shinchven/node:14-build for compiling

FROM shinchven/node:14

LABEL MAINTAINER="shinchven@gmail.com"

RUN apt-get update && apt-get upgrade -y \
&& apt-get install -y curl git build-essential \
&& npm install -g node-gyp webpack gulp gulp-terser \
&& apt autoremove -y \
