FROM resin/rpi-raspbian

RUN apt-get update && apt-get install -y python-pip rpi-update && \
    SKIP_WARNING=1 rpi-update
