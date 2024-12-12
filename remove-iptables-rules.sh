iptables -t nat -D OUTPUT -p tcp --dport 53 -j DNAT --to-destination 8.8.8.8:53
iptables -t nat -D OUTPUT -p udp --dport 53 -j DNAT --to-destination 8.8.8.8:53

iptables -t mangle -D POSTROUTING -p tcp  -j NFQUEUE --queue-num 200 --queue-bypass
iptables -t mangle -D POSTROUTING -p udp  -j NFQUEUE --queue-num 200 --queue-bypass
