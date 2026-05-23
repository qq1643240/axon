#!/bin/bash
# Axon Roothide 一键编译脚本
set -e

echo "========================================="
echo "Axon Roothide 编译脚本"
echo "========================================="

if [ -z "$THEOS" ]; then
    echo "错误: THEOS 环境变量未设置"
    echo "请先安装 roothide 版 Theos:"
    echo "bash -c \"\$(curl -fsSL https://raw.githubusercontent.com/roothide/theos/master/bin/install-theos)\""
    exit 1
fi

export THEOS_PACKAGE_SCHEME=roothide

echo "编译方案: $THEOS_PACKAGE_SCHEME"
echo "Theos 路径: $THEOS"
echo ""

echo "[1/3] 清理旧构建..."
make clean

echo "[2/3] 开始编译并打包..."
make package

echo "[3/3] 编译完成!"
echo ""
echo "deb 文件位于: packages/"
ls -la packages/

echo ""
echo "========================================="
echo "安装命令: make install"
echo "或手动用 Sileo/Zebra 安装 packages/*.deb"
echo "========================================="
