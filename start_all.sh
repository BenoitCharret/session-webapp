#!/bin/sh


./run_redis-server.sh

docker run --name appA session-webapp/1.0-SNAPSHOT &

docker run  --name appB session-webapp/1.0-SNAPSHOT &

sleep 30

docker run  --name haproxy --link appA:app1 --link appB:app2 --env "UPSTREAMS=2" bcharret/haproxy &
