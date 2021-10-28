#!/bin/bash

docker run \
 --rm \
 -it \
 --device /dev/snd \
 -e HOST=jukebox \
 nickll/snapcast-client:raspbian
