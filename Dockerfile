FROM centos
MAINTAINER wwww.linuxea.com
RUN yum install subversion* -y && yum clean all \
  & svnadmin create /data/docker/subversion \
