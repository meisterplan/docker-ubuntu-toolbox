FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y curl unzip net-tools netcat dnsutils iputils-ping nmap tcpdump && \
    apt-get install -y postgresql-client redis-tools && \
    rm -rf /var/lib/apt/lists/*

RUN cd /tmp && \
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install && \
    rm -rf awscliv2.zip && \
    rm -rf aws/

ENV AWS_PAGER cat

