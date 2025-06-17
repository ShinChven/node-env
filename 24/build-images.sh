#!/usr/bin/env bash

set -v

# Clean old images

docker rmi shinchven/node:24 shinchven/node:24-build shinchven/node:24-deployment

# Build `base` image

docker compose -f docker-compose.base.yml build --no-cache

# Build `build` image and `deployment` image

docker compose -f docker-compose.yml build --no-cache
