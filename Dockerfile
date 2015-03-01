#FROM benoitcharret/tomcat6-session
#FROM jolokia/tomcat-6.0
FROM dockerbase/tomcat8

ADD target/session-webapp.war /usr/local/tomcat/webapps/

#ADD src/main/tomcat/deploy-and-run.sh /usr/local/tomcat/bin/

EXPOSE 8080
EXPOSE 8081



CMD ["/usr/local/tomcat/bin/catalina.sh","run"]