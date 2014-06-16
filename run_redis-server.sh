#!/bin/sh

docker run -d  --rm --name redis -p 6379:6379 -v /tmp/data:/data dockerfile/redis
