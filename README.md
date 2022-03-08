# Ubuntu Toolbox for Docker

A small docker image with the latest version of Ubuntu and some often used cli tools.

## Available Tools

### Linux Core Tools

- curl
- unzip
- **net-tools**: arp, hostname, ifconfig, netstat, rarp, route, plipconfig, slattach, mii-tool, iptunnel, ipmaddr
- netcat
- dnsutils
- ping
- nmap
- tcpdump
- traceroute

### Programming Languages

- Python 3 (incl. pip)

### API Clients

- AWS CLI v2

### Datastore Clients

- PostgreSQL client (psql, ...)
- [Redis cli](https://redis.io/topics/rediscli)
- [AMQP client](https://github.com/ownaginatious/amqp-client-cli)

## Usage

`docker run --rm -it meisterplan/ubuntu-toolbox:latest`
