#!/bin/bash

docker run --rm \
  --name=site \
  --network=site \
  --restart=always \
  --volume="$PWD:/srv/jekyll:Z" \
  --volume="$PWD/vendor/bundle:/usr/local/bundle:Z" \
  --detach \
  -it jekyll/jekyll \
   jekyll serve