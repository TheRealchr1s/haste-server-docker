# haste-server-docker
This is a fork of [haste-server](https://github.com/seejohnrun/haste-server) specifically for Docker.  
It includes a few modifications to fix PostgreSQL support and a script for table creation.  
It is also possible to use file/memcached/redis storage by tweaking the docker-compose config.  
# Usage
Examine the config files to verify everything suits your needs, then run `docker-compose up -d`