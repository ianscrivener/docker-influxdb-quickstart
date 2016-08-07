# docker-influxdb-quickstart
Some shells scripts to get started quickly with influxdb on Docker.  



####Quickstart
```
git clone https://github.com/ianscrivener/docker-influxdb-quickstart
 
cd docker-influxdb-quickstart

./setup.sh


./interactive_run.sh
```

####Explanation

**setup.sh**

- creates a persistant data directory at `/root/data/influxdb`

- exports config file to `$PWD/influxdb.conf`   


**/interactive_run.sh**

- exposes http admin port 8083

- exposes influxdb port 8086

- deletes the container on shutdown



**/daemon_run.sh**

- runs as a daemon 

- names container influxdb

- exposes http admin port 8083

- exposes influxdb port 8086


**/make_upstart.sh** - for Ubuntu, Centos and RHEL

- configures Influxdb Docker container to start after the server restarts




####Configuration
- edit `$PWD/influxdb.conf` 



####Refereneces & acknowledgments

Influxdb on Dockerhub - [https://hub.docker.com/_/influxdb/](https://hub.docker.com/_/influxdb/)

Influxdb Docs - [https://docs.influxdata.com/influxdb/v0.13/introduction/](https://docs.influxdata.com/influxdb/v0.13/introduction/)