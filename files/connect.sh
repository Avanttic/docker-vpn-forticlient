#!/usr/bin/expect -f
set vpn_server [lindex $argv 0]
set vpn_user [lindex $argv 1]
set vpn_password [lindex $argv 2]

spawn /forticlient-sslvpn/64bit/forticlientsslvpn_cli  --server $vpn_server --vpnuser $vpn_user --keepalive
expect "Password for VPN:"
send "$vpn_password\r"
expect "Would you like to connect to this server? (Y/N)"
send "Y\r"
interact
