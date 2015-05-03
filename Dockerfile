FROM ubuntu:14.04
MAINTAINER Steffen Krause <steffen.krause@soabridge.com>

USER root

RUN mkdir -p /opt/sandbox

ENV SNDBX_HOME /opt/sandbox
