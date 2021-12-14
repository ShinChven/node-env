## shinchven/node:14 the base image

FROM ubuntu

LABEL MAINTAINER="shinchven@gmail.com"

RUN apt-get update && apt-get upgrade -y \
&& apt-get install -y tzdata curl \
&& curl -sL https://deb.nodesource.com/setup_14.x | bash - \
&& apt-get update && apt-get install -y nodejs \
&& apt autoremove -y \
&& npm i -g corepack ts-node typescript shx
