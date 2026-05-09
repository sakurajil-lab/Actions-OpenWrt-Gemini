# 1. 修改默认 IP 为 192.168.5.2
sed -i 's/192.168.1.1/192.168.5.2/g' package/base-files/files/bin/config_generate

# 2. 修改默认网关为 192.168.5.1
sed -i '/set network.$1.ipaddr/a \t\tset network.$1.gateway="192.168.5.1"\n\t\tset network.$1.dns="192.168.5.1"' package/base-files/files/bin/config_generate

# 3. 移除冗余的无线配置（针对你不需要 wifi 的需求，虽然不能物理拆除，但能精简软件层）
# 这一步通常在 menuconfig 处理，脚本保留默认即可
