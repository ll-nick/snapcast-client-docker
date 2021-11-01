#!/bin/bash

docker run \
 --name=snapcast-client \
 --restart=unless-stopped \
 --device /dev/snd \
 --env HOST=jukebox \
 --detach \
 nickll/snapcast-client:raspbian
