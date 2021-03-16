FROM ubuntu:20.04
RUN apt update -y
RUN apt upgrade -y
RUN apt install -y curl openvpn openvpn-systemd-resolved openresolv
COPY ./vpn ./vpn
WORKDIR ./vpn
RUN openvpn --config vpnbook-fr8-udp53.ovpn
RUN curl 'https://api.ipify.org?format=json'