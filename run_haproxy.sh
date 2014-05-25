#!/bin/sh -xv


 docker run -i -t  -v `readlink -m $0 |xargs dirname`/src/main/haproxy:/haproxy-override dockerfile/haproxy