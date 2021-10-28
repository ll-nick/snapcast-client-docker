#!/bin/bash

docker build --pull -t nickll/snapcast-client:raspbian --build-arg BUILD_FROM=balenalib/rpi-raspbian:latest .
