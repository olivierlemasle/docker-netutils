FROM ubuntu:xenial

LABEL \
    org.opencontainers.image.source="https://github.com/olivierlemasle/docker-netutils"

RUN apt-get update && apt-get install -y \
    iputils-ping \
    net-tools \
    curl \
    wget \
    traceroute \
    netcat \
    dnsutils \
    && rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
