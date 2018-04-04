#!/bin/bash

export JEKYLL_VERSION=latest
docker run --rm \
  -p 127.0.0.1:4000:4000 \
  --volume="$PWD:/srv/jekyll" \
  -it jekyll/builder:$JEKYLL_VERSION \
  jekyll  "$@"
