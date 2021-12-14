#!/usr/bin/env bash
set -v
docker push shinchven/node:14
docker push shinchven/node:14-build
docker push shinchven/node:14-deployment
