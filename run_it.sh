#!/bin/bash

docker run \
 --name=snapcast-client \
 --rm \
 -it \
 --device /dev/snd \
 -e HOST=jukebox \
 nickll/snapcast-client:raspbian
