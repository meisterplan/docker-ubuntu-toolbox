FROM ubuntu:latest

ENV DEBIAN_FRONTEND noninteractive
ENV TZ Etc/UTC

RUN apt-get update && \
    apt-get install -y curl unzip python3 python3-pip && \
    apt-get install -y net-tools netcat dnsutils iputils-ping nmap tcpdump traceroute && \
    apt-get install -y postgresql-client redis-tools && \
    rm -rf /var/lib/apt/lists/*

RUN pip install amqp_client_cli

RUN cd /tmp && \
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install && \
    rm -rf awscliv2.zip && \
    rm -rf aws/

ENV AWS_PAGER cat
