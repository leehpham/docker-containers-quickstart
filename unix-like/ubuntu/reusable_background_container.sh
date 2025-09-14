#!/usr/bin/env bash

# Keep the container running and
# exec into it whenever you want.

set -o errexit
set -o nounset
set -o pipefail

docker pull ubuntu:24.04

# Change the command to `sleep infinity` if you want to be formal.
docker run \
  -d \
  --name hoang-ubuntu-local \
  --hostname hoang-ubuntu-local \
  ubuntu:24.04 \
  tail -f /dev/null

# Get a shell later
docker exec -it hoang-ubuntu-local bash