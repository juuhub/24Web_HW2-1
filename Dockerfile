FROM tomcat:9.0

COPY src/main/webapp /usr/local/tomcat/webapps/jspcrud/

CMD ["catalina.sh", "run"]