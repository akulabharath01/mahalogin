FROM tomcat:8.5.37-jre8
MAINTAINER maha@gmail.com
RUN apt-get update
ADD http://3.19.61.156:8082/artifactory/Pipelineproject/com/maha/mahaLogin/5.0/mahaLogin-5.0.war /usr/local/tomcat/webapps/
WORKDIR /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
