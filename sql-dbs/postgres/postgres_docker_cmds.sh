#!/usr/bin/env bash

# 16 is the most stable version as of now.
docker pull postgres:16

docker volume create \
  --driver local \
  --label owner=acme/single \
  --label env=dev \
  --label purpose=postgres-data \
  acme-single-dev-postgres-data
