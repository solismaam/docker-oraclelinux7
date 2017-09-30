FROM oraclelinux:7-slim

RUN yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && \
    yum-config-manager \
        --enable ol7_optional_latest \
        --enable ol7_software_collections && \
    yum update -y && \
    yum install -y \
        ansible \
        curl \
        git \
        java-1.8.0-openjdk-headless \
        python-pip \
        python-requests \
        python-virtualenv \
        tree \
        vim \ 
        wget && \
    yum clean all && \
    rm -rf /var/cache/yum
