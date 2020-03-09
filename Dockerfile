FROM debian:10
RUN apt-get update && \
    apt-get install -y ppp expect iptables
COPY files/forticlient-sslvpn /forticlient-sslvpn/
COPY files/connect.sh /
RUN chmod +x /connect.sh

#CMD bash
CMD iptables -t nat -A POSTROUTING -o ppp0 -j MASQUERADE && \
    iptables -A FORWARD -i eth0 -j ACCEPT && \
    /connect.sh $vpn_server $vpn_user $vpn_password
