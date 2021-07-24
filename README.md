# Community_nRF52_Arduino Docker Container
Docker image for compiling nRF52 Community code using the Arduino cli docker image 


Uses the latest release![Community BSP for releases](https://img.shields.io/github/release/jpconstantineau/Community_nRF52_Arduino.svg) 

Uses the latest Adafruit toolchain ![Adafruit Library for releases](https://img.shields.io/github/release/adafruit/Adafruit_nRF52_Arduino.svg) 

Uses the latest Arduino-CLI ![Releases](https://img.shields.io/github/v/release/arduino/arduino-cli.svg)

There is a github action that check for new releases every day.

## Using the image

Find the container for you to use on [Dockerhub](https://hub.docker.com/r/jpconstantineau/arduino-cli-community-nrf52) and [GitHub Container Registry](https://github.com/jpconstantineau/Docker_Community_nRF52/pkgs/container/docker_community_nrf52)

This image is built for the following architectures:

* linux/amd64

Note that nrfprog (which is included by Adafruit in their nRF52 Board Support Package and thus the Community Package as well) does not support ARM architectures.

To use the docker image, do a docker pull, then you can call the CLI as part of the docker run command.

Note that to see your sketch, the working directory must be mounted in the image.

```
docker pull ghcr.io/jpconstantineau/docker_community_nrf52:latest

docker run -it --mount src=${PWD},target=/mnt,type=bind  ghcr.io/jpconstantineau/docker_community_nrf52:latest arduino-cli-community-nrf52

```