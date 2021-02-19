# Community_nRF52_Arduino Docker Container
Docker image for compiling nRF52 Community code using the Arduino cli docker image 


Uses the latest release![Community BSP for releases](https://img.shields.io/github/release/jpconstantineau/Community_nRF52_Arduino.svg) 

Uses the latest Adafruit toolchain ![Adafruit Library for releases](https://img.shields.io/github/release/adafruit/Adafruit_nRF52_Arduino.svg) 

Uses the latest Arduino-CLI ![Releases](https://img.shields.io/github/v/release/arduino/arduino-cli.svg)

There is a github action that check for new releases every day.

## Using the image

Find the container for you to use on [Dockerhub](https://hub.docker.com/r/jpconstantineau/arduino-cli-community-nrf52).

To use the docker image, do a docker pull, then you can call the CLI as part of the docker run command.

Note that to see your sketch, the working directory must be mounted in the image.

```
docker pull jpconstantineau/arduino-cli-community-nrf52

docker run -it --mount src=${PWD},target=/mnt,type=bind  jpconstantineau/arduino-cli-community-nrf52:latest arduino-cli-community-nrf52

```