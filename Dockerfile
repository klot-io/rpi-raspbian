FROM resin/rpi-raspbian

RUN apt-get update && apt-get install -y rpi-update && \
    SKIP_WARNING=1 rpi-update
