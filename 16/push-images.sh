#!/usr/bin/env bash
set -v
docker push shinchven/node:16
docker push shinchven/node:16-build
docker push shinchven/node:16-deployment
