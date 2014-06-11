#!/bin/sh

PIDFILE="/var/run/haproxy.pid"
UP_COUNT=${UPSTREAMS:-1}

UP_STANZAS="listen session-webapp :80"$'\n'

HAPROXY="/etc/haproxy"
CONFIG="haproxy.cfg"

cd "$HAPROXY"

index=0
while [ $index -lt $UP_COUNT ]; do
#for index in {1..$UP_COUNT}; do
  let $((index++))
  IP_ADDR=`eval echo '$'APP${index}_PORT_8080_TCP_ADDR`
  UP_STANZAS="${UP_STANZAS}"$'\n'"server tomcat${index} ${IP_ADDR}:8080 check"
done

UP_STANZAS="${UP_STANZAS}"$'\n'"stats enable"$'\n'"stats uri /stats"

echo "${UP_STANZAS}" >> "$CONFIG"

haproxy -f /etc/haproxy/haproxy.cfg -p "$PIDFILE"
