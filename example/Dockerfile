FROM shinchven/node:14-build

RUN mkdir -p /root/build/app

WORKDIR /root/build/app
COPY . /usr/build/app

RUN npm install && npm run compile

FROM shinchven/node:14-deployment

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY COPY --from=0 /root/build/app /usr/src/

EXPOSE 3000

ARG NODE=production
ENV NODE_ENV ${NODE}

CMD ["pm2-docker", "src/index.ts"]
