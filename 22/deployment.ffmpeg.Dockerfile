FROM shinchven/node:22-deployment

LABEL MAINTAINER="shinchven@gmail.com"

RUN apt-get update && apt-get -y install ffmpeg
