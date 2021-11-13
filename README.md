# snapcast-client-docker
Client for snapcast multi-room audio.

Based off of https://github.com/IVData/dockerfiles/tree/master/snapclient.

I'm using this docker image in a librespot-snapcast setup with multiple streams.
It's currently built for armv7 CPUs (tested on Raspberry Pi Zero and Raspberry Pi 3)  but feel free to clone/fork this repo to build it yourself should you require a different architecture.
Check [my meta repository](https://github.com/ll-nick/jukebox-meta) for a docker-compose file to run this docker image.

The run files in this repo were used for testing purposes but I run this image from docker-compose only so that may be more up to date.
