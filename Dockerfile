FROM jpconstantineau/arduino-cli-bluefruit-nrf52:latest 

COPY arduino-cli.yaml /
RUN arduino-cli core update-index
RUN arduino-cli core upgrade
RUN arduino-cli core search nrf52
RUN arduino-cli core install community_nrf52:nrf52
RUN arduino-cli compile -v --fqbn community_nrf52:nrf52:feather52832 --build-path /tmp /test/test.ino
