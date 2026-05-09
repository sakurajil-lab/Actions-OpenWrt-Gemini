# 修改默认 IP
sed -i 's/192.168.1.1/192.168.5.2/g' package/base-files/files/bin/config_generate

# 注入默认网关和 DNS 指向 192.168.5.1
sed -i '/set network.$1.ipaddr/a \t\tset network.$1.gateway="192.168.5.1"\n\t\tset network.$1.dns="192.168.5.1"' package/base-files/files/bin/config_generate
