#!/usr/bin/env bash

set -v

# Build `base` image
docker compose -f docker-compose.base.yml build --no-cache
# Build `build` image and `deployment` image
docker compose -f docker-compose.yml build --no-cache
