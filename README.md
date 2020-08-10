#smartdns 配置

conf-file /etc/smartdns/smartdns-domains.china.conf

server 119.29.29.29 -group CN -exclude-default-group
server 223.5.5.5 -group CN -exclude-default-group

/etc/smartdns/smartdns-domains.china.conf 加载中国域名文件，生成的脚本代码
https://github.com/coxde/update-china-list/blob/master/update-china-list.sh

弄个定时脚本每天执行一次就可以了
