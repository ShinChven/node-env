FROM ubuntu:bionic

MAINTAINER shinchven@gmail.com

RUN apt-get update && apt-get upgrade -y \
&& apt-get install -y apt-utils make curl cmake g++ gcc gnupg gnupg2 tzdata \
&& ln -fs /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
&& export DEBIAN_FRONTEND=noninteractive \
&& dpkg-reconfigure --frontend noninteractive tzdata \
&& export DEBIAN_FRONTEND= \
&& curl -sL https://deb.nodesource.com/setup_12.x | bash - \
&& curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
&& echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
&& apt-get update && apt-get install -y git bash nodejs yarn node-gyp && yarn --version \
&& npm update && npm install -g pm2 node-schedule@1.3.1 npm gulp gulp-terser \
&& pm2 install pm2-logrotate
