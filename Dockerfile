FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -y --reinstall network-manager network-manager-gnome network-manager-openvpn network-manager-openvpn-gnome
RUN apt-get install -y curl openvpn zip unzip
COPY ./vpn ./vpn
WORKDIR ./vpn
#CMD openvpn --config vpnbook-fr8-udp53.ovpn --auth-user-pass cred.txt
#RUN curl 'https://api.ipify.org?format=json'