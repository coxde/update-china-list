#/bin/sh

mkdir -p /tmp/smartdns/

wget -O /tmp/smartdns/china.conf https://raw.githubusercontent.com/felixonmars/dnsmasq-china-list/master/accelerated-domains.china.conf

#匹配smartdns规则
sed -i "s/^server=\/\(.*\)\/[^\/]*$/nameserver \/\1\/CN/g;/^nameserver/!d" /tmp/smartdns/china.conf 2>/dev/null

mv -f /tmp/smartdns/china.conf  /etc/smartdns/smartdns-domains.china.conf
rm -rf /tmp/smartdns/

/etc/init.d/smartdns reload
