#!/bin/sh

docker-compose up -d

docker inspect sessionwebapp_haproxy_1 |grep  IPAddress