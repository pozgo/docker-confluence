FROM polinux/centos7:base
MAINTAINER Przemyslaw Ozgo <linux@ozgo.info>

RUN yum update -y && \
yum install -y --nogpgcheck tar wget mariadb java-1.7.0-openjdk && \
mkdir /data

ADD install /data/install/

RUN cd /data/install && \
./install.sh 

RUN mv /data/install/mysql-connector-java-5.1.31-bin.jar /opt/atlassian/confluence/confluence/WEB-INF/lib/mysql-connector-java-5.1.31-bin.jar

ADD supervisord.conf /etc/supervisord.d/confluence .conf
EXPOSE 8090
