FROM centos:7

ARG VERSION=1.15.0

ADD kubernetes.repo /etc/yum.repos.d/kubernetes.repo
ADD build.sh /build.sh
RUN /build.sh
