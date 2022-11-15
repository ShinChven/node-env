#!/usr/bin/env bash
set -v

# Push base image

docker compose -f docker-compose.base.yml push

# Push `build` image and `deployment` image

docker compose push
