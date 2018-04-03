#!/bin/bash

export JEKYLL_VERSION=latest
docker run --rm \
  --volume="$PWD:/srv/jekyll" \
  -it jekyll/builder:$JEKYLL_VERSION \
  jekyll build $@
