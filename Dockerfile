FROM jpconstantineau/arduino-cli-bluefruit-nrf52:latest 


RUN /arduino-cli core search nrf52
RUN /arduino-cli core install community_nrf52:nrf52
COPY test.ino /home
RUN /arduino-cli compile -v --fqbn community_nrf52:nrf52:feather52832 --build-path /tmp /home/test.ino -o test
