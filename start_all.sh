#!/bin/sh


docker run   --rm --name redis -p 6379:6379 -v /tmp/data:/data dockerfile/redis &

sleep 5

docker run --rm  --name appA --link redis:db  session-webapp:1.0-SNAPSHOT &

docker run  --rm --name appB --link redis:db  session-webapp:1.0-SNAPSHOT &

sleep 10

docker run  --rm --name haproxy --link appA:app1 --link appB:app2 --env "UPSTREAMS=2" bcharret/haproxy &

docker inspect haproxy |grep  IPAddress