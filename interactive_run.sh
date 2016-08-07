#!/usr/bin/env bash
docker run -it --rm=true \
    -p 8083:8083 \
    -p 8086:8086 \
    -v /root/data/influxdb:/var/lib/influxdb \
    influxdb -config /var/lib/influxdb.conf
