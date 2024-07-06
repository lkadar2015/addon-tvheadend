#!/bin/bash

docker run \
  --rm \
  -it \
  --name builder \
  --privileged \
  -v ./tvheadend:/data \
  -v /var/run/docker.sock:/var/run/docker.sock:ro \
  ghcr.io/home-assistant/amd64-builder \
  -t /data \
  --all \
  --test \
  -i my-test-addon-{arch} \
  -d local

