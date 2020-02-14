FROM java
MAINTAINER ccw
# https://blog.goodjack.tw/2019/03/apt-update-error-in-dockerfile-because-docker-jessie-has-been-archived.html
RUN sed -i '/jessie-updates/d' /etc/apt/sources.list  # Now archived
RUN apt-get update
RUN apt-get install -y wget

RUN cd /

RUN wget https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.82.tar.gz

RUN tar zxvf apache-tomcat-7.0.82.tar.gz

CMD ["/apache-tomcat-7.0.82/bin/catalina.sh", "run"]

EXPOSE 8080