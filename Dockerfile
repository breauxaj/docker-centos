FROM centos:latest

RUN curl -sOL https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm \
  && yum -y install epel-release-latest-8.noarch.rpm \
  && yum -y -q update \
  && yum clean all \
  && rm -rf /var/cache/* \
  && cat /dev/null > ~/.bash_history \
  && history -c
