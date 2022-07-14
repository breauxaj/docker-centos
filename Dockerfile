FROM centos:latest

RUN dnf install centos-release-stream \ 
  && dnf swap centos-{linux,stream}-repos \
  && dnf distro-sync \
  && cat /dev/null > ~/.bash_history \
  && history -c

CMD ["bash"]

LABEL org.opencontainers.image.vendor="Breaux Heavy Industries" \
	org.opencontainers.image.url="https://breaux.io" \
	org.opencontainers.image.title="CentOS Linux" \
	org.opencontainers.image.description="A base image utilized by child containers" \
	org.opencontainers.image.version="v0.0.1" \
	org.opencontainers.image.documentation="https://docs.breaux.io"