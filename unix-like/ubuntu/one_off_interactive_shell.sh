#!/usr/bin/env bash

# Ephemeral
# Runs Ubuntu, drops you into Bash,
# and removes the container when you exit.

set -o errexit
set -o nounset
set -o pipefail

docker pull ubuntu:24.04

# `bash` because `sh` symlinks to `dash`.
docker run --rm -it ubuntu:24.04 bash

# Inside the container
apt update && apt install -y curl vim