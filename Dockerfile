FROM tomcat:8.0-jre8
MAINTAINER qualitythought
ADD gameoflife.war  /usr/local/tomcat/webapps/gameoflife.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
