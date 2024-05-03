FROM shinchven/node:20-deployment

LABEL MAINTAINER="shinchven@gmail.com"

RUN apt-get update && apt-get -y install ffmpeg
