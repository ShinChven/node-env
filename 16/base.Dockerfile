FROM ubuntu

LABEL MAINTAINER="shinchven@gmail.com"

RUN apt-get update && apt-get upgrade -y \
&& apt-get install -y tzdata curl \
&& curl -sL https://deb.nodesource.com/setup_16.x | bash - \
&& apt-get update && apt-get install -y nodejs \
&& apt autoremove -y
