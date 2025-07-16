FROM centos:latest

RUN yum install -y java-1.8.0-openjdk

RUN mkdir /opt/tomcat

ADD https://downloads.apache.org/tomcat/tomcat-9/v9.0.70/bin/apache-tomcat-9.0.70.tar.gz /opt/tomcat

RUN tar -xvzf /opt/tomcat/apache-tomcat-9.0.70.tar.gz -C /opt/tomcat

RUN mv /opt/tomcat/apache-tomcat-9.0.70 /opt/tomcat/tomcat9

EXPOSE 8080

CMD ["/opt/tomcat/tomcat9/bin/catalina.sh", "run"]
