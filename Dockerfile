FROM benoitcharret/tomcat6-session
#FROM jolokia/tomcat-6.0

ADD target/session-webapp.war /maven/

EXPOSE 8080
EXPOSE 8081