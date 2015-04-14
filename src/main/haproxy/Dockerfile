FROM benoitcharret/kunai
#FROM dockerfile/ubuntu

RUN apt-get update
RUN apt-get install -y haproxy
RUN sed -i 's|/dev/log|127.0.0.1|g' /etc/haproxy/haproxy.cfg
RUN sed -i 's/daemon/#daemon/g' /etc/haproxy/haproxy.cfg

#kunai
RUN sed -i 's/["linux"]/["haproxy", "linux"]/g' /etc/kunai/local.json
RUN sed -i 's/www.google.fr/localhost/g' /etc/haproxy/haproxy.json
RUN kunai reload

ADD start_haproxy.sh /usr/local/bin/start_haproxy.sh


CMD [ "bash" , "/usr/local/bin/start_haproxy.sh"]

EXPOSE 80
