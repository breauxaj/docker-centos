FROM centos:latest
MAINTAINER "Adam Breaux" <breauxaj@gmail.com>

RUN curl -sOL https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm \
  && yum -y install epel-release-latest-7.noarch.rpm \
  && yum -y install deltarpm git \
  && yum history sync \
  && yum -y -q update \
  && yum clean all \
  && rm -rf /var/cache/* \
  && cat /dev/null > ~/.bash_history \
  && history -c
