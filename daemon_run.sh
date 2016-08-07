#!/usr/bin/env bash
cp /root/data/influxdb/influxdb.conf .
docker run -d \
    --name influxdb \
    -p 8083:8083 \
    -p 8086:8086 \
    -v $PWD/influxdb.conf:/etc/influxdb/influxdb.conf:ro \
    -v /root/data/influxdb:/var/lib/influxdb \
    influxdb -config /etc/influxdb/influxdb.conf

rm $PWD/influxdb.conf
sleep 2
docker ps
