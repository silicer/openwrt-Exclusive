#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================
sed -i 's/KERNEL_PATCHVER:=5.10/KERNEL_PATCHVER:=5.15/g' ./target/linux/x86/Makefile

# Uncomment a feed source
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
# echo 'src-git opentopd https://github.com/sirpdboy/sirpdboy-package' >> feeds.conf.default
# sed -i '$a src-git opentopd https://github.com/sirpdboy/sirpdboy-package' feeds.conf.default
# sed -i '$a src-git diy https://github.com/firker/diy-ziyong' feeds.conf.default
# sed -i '$a src-git ssr https://github.com/fw876/helloworld' feeds.conf.default
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
# sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall' feeds.conf.default
# sed -i '$a src-git jerryk https://github.com/jerrykuku/openwrt-package' feeds.conf.default

git clone https://github.com/sirpdboy/sirpdboy-package package/sirpdboy-package
rm -rf package/sirpdboy-package/luci-app-poweroffdevice
# git clone -b 18.06 https://github.com/garypang13/luci-theme-edge.git package/luci-theme-edge
# git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
# git clone https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan
# git clone https://github.com/sirpdboy/luci-theme-opentopd.git package/luci-theme-opentopd
# git clone https://github.com/kiddin9/openwrt-bypass.git package/openwrt-bypass
# git clone https://github.com/jerrykuku/openwrt-package.git package/jerrykuku-vssr
# git clone https://github.com/xiaorouji/openwrt-passwall.git package/openwrt-passwall
# git clone https://github.com/xiaorouji/openwrt-passwall2.git package/passwall2
# git clone https://github.com/dwj0/luci-app-sms-tool.git package/luci-app-sms-tool
# git clone https://github.com/sirpdboy/netspeedtest package/netspeedtest
# git clone https://github.com/pymumu/smartdns.git package/smartdns
# git clone https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns
# git clone https://github.com/sirpdboy/luci-app-autotimeset package/luci-app-autotimeset
# git clone https://github.com/godros/luci-app-godproxy.git package/luci-app-godproxy
# git clone https://github.com/BCYDTZ/luci-app-UUGameAcc.git package/luci-app-UUGameAcc
# git clone -b master https://github.com/vernesong/OpenClash.git package/OpenClash

# svn co https://github.com/messense/aliyundrive-webdav/trunk/openwrt package/aliyundrive-webdav
# svn co https://github.com/kiddin9/openwrt-packages/trunk/adguardhome package/adguardhome
# svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-adguardhome package/luci-app-adguardhome
# svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash package/luci-app-openclash

rm -rf ./target/linux/generic/pending-5.10/701-net-ethernet-mtk_eth_soc-add-ipv6-flow-offloading-support.patch