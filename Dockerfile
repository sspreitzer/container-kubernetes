FROM centos:7

ARG VERSION=v1.13.4

ADD build.sh /build.sh
RUN /build.sh
