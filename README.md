# docker-vpn-forticlient
docker run --rm -ti -e vpn_user=<user> -e vpn_password=<password> -e vpn_server=<ip:port> --privileged --cap-add=NET_ADMIN --device /dev/net/tun avanttic/docker-vpn-forticlient
