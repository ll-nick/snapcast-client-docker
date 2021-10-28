#!/bin/bash

docker run \
 --restart=unless-stopped \
 --device /dev/snd \
 --env HOST=jukebox \
 --detach \
 nickll/snapcast-client:raspbian
