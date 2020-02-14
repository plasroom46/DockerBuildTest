FROM java
MAINTAINER ccw
# https://www.jesusamieiro.com/failed-to-fetch-http-ftp-debian-org-debian-dists-jessie-updates-main-404-not-found/
RUN sudo apt-get -o Acquire::Check-Valid-Until=false update
RUN apt-get install -y wget

RUN cd /

RUN wget https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.82.tar.gz

RUN tar zxvf apache-tomcat-7.0.82.tar.gz

CMD ["/apache-tomcat-7.0.82/bin/catalina.sh", "run"]

EXPOSE 8080