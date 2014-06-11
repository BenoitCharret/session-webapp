#!/bin/sh

docker kill haproxy
docker rm haproxy

docker kill appA
docker rm appA

docker kill appB
docker rm appB

docker kill redis
docker rm redis
