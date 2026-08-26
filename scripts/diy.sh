#!/bin/bash

set -e

echo "========================================="
echo "        LEDE DIY Configuration"
echo "========================================="

# 修改默认 LAN 地址
# 真正的地址由 GitHub Actions 后面动态写入

# 默认主题
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' \
    feeds/luci/collections/luci/Makefile 2>/dev/null || true

echo "DIY configuration completed."
