# snapcast-client-docker

## >> Deprecated <<

There is now a single repo for both server and client that additionally features autobuilds and multi-arch images:
https://github.com/ll-nick/snapcast-docker

## What's in here?

Client for snapcast multi-room audio.

Based off of https://github.com/IVData/dockerfiles/tree/master/snapclient.

I'm using this docker image in a librespot-snapcast setup with multiple streams.
It's currently built on and for Raspberry Pi 3 but feel free to clone/fork this repo to build it yourself should you require a different architecture.
I didn't mange to get docker running properly on my RPi Zero so installed the client directly onto the host in that case.
Additionally, I'm using an old Android phone to serve as a client in one of the rooms.

Check [my meta repository](https://github.com/ll-nick/jukebox-meta) for a docker-compose file to run this docker image.

The run files in this repo were used for testing purposes but I run this image from docker-compose only so that may be more up to date.
