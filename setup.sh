#!/usr/bin/env bash
mkdir -p /root/data/influxdb
docker run --rm influxdb influxd config > /root/data/influxdb/influxdb.conf

