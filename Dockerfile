FROM ubuntu:14.04
MAINTAINER Steffen Krause <steffen.krause@soabridge.com>

# Setting user to root
USER root

# Create a directory
RUN mkdir -p /opt/sandbox

# Set the newly created directory as work directory
WORKDIR /opt/sandbox/

# Set the environment variable SNDBX_HOME
ENV SNDBX_HOME /opt/sandbox

# Expose port 8090
EXPOSE 8090

# Creating three volumes for the container
RUN mkdir -p /data/volume1 /data/volume2 /data/volume3
VOLUME ["/data/volume1", "/data/volume2", "/data/volume3"]

# Set default command
CMD ["ping", "www.google.com"]
