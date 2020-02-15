FROM java
MAINTAINER ccw

# https://unix.stackexchange.com/questions/517838/how-to-install-debian-jessie-backports-package-after-package-removal-using-docke
RUN echo "deb http://ftp.debian.org/debian jessie main" > /etc/apt/sources.list
RUN apt-get install -y wget

RUN cd /

RUN wget https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.82.tar.gz

RUN tar zxvf apache-tomcat-7.0.82.tar.gz

CMD ["/apache-tomcat-7.0.82/bin/catalina.sh", "run"]

EXPOSE 8080