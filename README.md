# openvpn-docker-sample

CMD openvpn --config vpnbook-fr8-udp53.ovpn --auth-user-pass cred.txt
Outputs.
```openvpn --config vpnbook-fr8-udp53.ovpn --auth-user-pass cred.txt
Sun Mar 14 22:33:00 2021 WARNING: file 'cred.txt' is group or others accessible
Sun Mar 14 22:33:00 2021 OpenVPN 2.4.4 x86_64-pc-linux-gnu [SSL (OpenSSL)] [LZO] [LZ4] [EPOLL] [PKCS11] [MH/PKTINFO] [AEAD] built on May 14 2019
Sun Mar 14 22:33:00 2021 library versions: OpenSSL 1.1.1  11 Sep 2018, LZO 2.08
Sun Mar 14 22:33:00 2021 WARNING: No server certificate verification method has been enabled.  See http://openvpn.net/howto.html#mitm for more info.
Sun Mar 14 22:33:00 2021 NOTE: the current --script-security setting may allow this configuration to call user-defined scripts
Sun Mar 14 22:33:00 2021 TCP/UDP: Preserving recently used remote address: [AF_INET]94.23.57.8:53
Sun Mar 14 22:33:00 2021 Socket Buffers: R=[212992->212992] S=[212992->212992]
Sun Mar 14 22:33:00 2021 UDP link local: (not bound)
Sun Mar 14 22:33:00 2021 UDP link remote: [AF_INET]94.23.57.8:53
Sun Mar 14 22:33:01 2021 TLS: Initial packet from [AF_INET]94.23.57.8:53, sid=20557aae 01ea9a67
Sun Mar 14 22:33:01 2021 WARNING: this configuration may cache passwords in memory -- use the auth-nocache option to prevent this
Sun Mar 14 22:33:01 2021 VERIFY OK: depth=1, C=CH, ST=Zurich, L=Zurich, O=vpnbook.com, OU=IT, CN=vpnbook.com, name=vpnbook.com, emailAddress=admin@vpnbook.com
Sun Mar 14 22:33:01 2021 VERIFY OK: depth=0, C=CH, ST=Zurich, L=Zurich, O=vpnbook.com, OU=IT, CN=vpnbook.com, name=vpnbook.com, emailAddress=admin@vpnbook.com
Sun Mar 14 22:33:02 2021 Control Channel: TLSv1.2, cipher TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384, 1024 bit RSA
Sun Mar 14 22:33:02 2021 [vpnbook.com] Peer Connection Initiated with [AF_INET]94.23.57.8:53
Sun Mar 14 22:33:03 2021 SENT CONTROL [vpnbook.com]: 'PUSH_REQUEST' (status=1)
Sun Mar 14 22:33:03 2021 PUSH: Received control message: 'PUSH_REPLY,redirect-gateway def1,dhcp-option DNS  213.186.33.99,dhcp-option DNS  91.239.100.100,route 10.8.0.1,topology net30,ping 5,ping-restart 30,ifconfig 10.8.0.54 10.8.0.53,peer-id 12,cipher AES-256-GCM'
Sun Mar 14 22:33:03 2021 OPTIONS IMPORT: timers and/or timeouts modified
Sun Mar 14 22:33:03 2021 OPTIONS IMPORT: --ifconfig/up options modified
Sun Mar 14 22:33:03 2021 OPTIONS IMPORT: route options modified
Sun Mar 14 22:33:03 2021 OPTIONS IMPORT: --ip-win32 and/or --dhcp-option options modified
Sun Mar 14 22:33:03 2021 OPTIONS IMPORT: peer-id set
Sun Mar 14 22:33:03 2021 OPTIONS IMPORT: adjusting link_mtu to 1625
Sun Mar 14 22:33:03 2021 OPTIONS IMPORT: data channel crypto options modified
Sun Mar 14 22:33:03 2021 Data Channel: using negotiated cipher 'AES-256-GCM'
Sun Mar 14 22:33:03 2021 Outgoing Data Channel: Cipher 'AES-256-GCM' initialized with 256 bit key
Sun Mar 14 22:33:03 2021 Incoming Data Channel: Cipher 'AES-256-GCM' initialized with 256 bit key
Sun Mar 14 22:33:03 2021 ROUTE_GATEWAY 172.17.0.1/255.255.0.0 IFACE=eth0 HWADDR=02:42:ac:11:00:02
Sun Mar 14 22:33:03 2021 TUN/TAP device tun1 opened
Sun Mar 14 22:33:03 2021 TUN/TAP TX queue length set to 100
Sun Mar 14 22:33:03 2021 do_ifconfig, tt->did_ifconfig_ipv6_setup=0
Sun Mar 14 22:33:03 2021 /sbin/ip link set dev tun1 up mtu 1500
Sun Mar 14 22:33:03 2021 /sbin/ip addr add dev tun1 local 10.8.0.54 peer 10.8.0.53
Sun Mar 14 22:33:03 2021 /etc/openvpn/update-resolv-conf tun1 1500 1553 10.8.0.54 10.8.0.53 init
Sun Mar 14 22:33:05 2021 /sbin/ip route add 94.23.57.8/32 via 172.17.0.1
Sun Mar 14 22:33:05 2021 /sbin/ip route add 0.0.0.0/1 via 10.8.0.53
Sun Mar 14 22:33:05 2021 /sbin/ip route add 128.0.0.0/1 via 10.8.0.53
Sun Mar 14 22:33:05 2021 /sbin/ip route add 10.8.0.1/32 via 10.8.0.53
Sun Mar 14 22:33:05 2021 Initialization Sequence Completed
```

But curl 'https://api.ipify.org?format=json'
```
curl: (6) Could not resolve host: api.ipify.org
```
