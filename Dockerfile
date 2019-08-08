FROM centos:7
LABEL maintainer="Kevin Qin <qinqiwei@hotmail.com>"

WORKDIR /opt/src

# RUN yum update -y 
# RUN yum install -y epel-release 
# RUN rpm --rebuilddb
# RUN yum install -y wget xl2tpd  ppp pptpd
# RUN yum install -y bind-utils wget
# RUN yum install -y openswan 


COPY ./gblog_unix /opt/src/gblog_unix
RUN chmod 755 /opt/src/gblog_unix

EXPOSE 8080/tcp

VOLUME ["/lib/modules"]

CMD ["/opt/src/gblog_unix"]