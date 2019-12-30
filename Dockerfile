FROM centos:latest

RUN curl -sOL https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm \
  && yum -y install epel-release-latest-8.noarch.rpm \
  && yum -y -q update \
  && yum clean all \
  && rm -rf /var/cache/* \
  && cat /dev/null > ~/.bash_history \
  && history -c

CMD ["bash"]

LABEL org.opencontainers.image.vendor="Breaux Heavy Industries" \
	org.opencontainers.image.url="https://breaux.io" \
	org.opencontainers.image.title="CentOS Linux" \
	org.opencontainers.image.description="A base image utilized by child containers" \
	org.opencontainers.image.version="v0.0.1" \
	org.opencontainers.image.documentation="https://docs.breaux.io"