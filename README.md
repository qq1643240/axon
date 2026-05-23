# Axon - Roothide iOS 14-16 修改版

## 修改内容

### 1. Roothide 支持
- `THEOS_PACKAGE_SCHEME = roothide`
- Architecture: `iphoneos-arm64e`
- 所有硬编码路径通过 `jbroot()` 宏自动适配随机化路径
- 兼容 Dopamine-roothide / Serotonin / Bootstrap 等隐根越狱环境

### 2. 滑动手势清除通知
- **上滑** (Swipe Up): 清除当前 App 的所有通知（单个清除）
- **下滑** (Swipe Down): 清除所有通知（全部清除）
- 带动画效果和触觉反馈

## 文件结构
```
Axon-Roothide/
├── Makefile
├── control
├── build.sh
├── README.md
└── Tweak/
    ├── Tweak.xm          (已修改: roothide路径 + 手势支持)
    ├── AXNManager.m      (已修改: roothide路径)
    ├── AXNAppCell.m      (已修改: 上滑/下滑手势)
    ├── AXNView.h/m       (原始)
    ├── AXNManager.h      (原始)
    ├── AXNAppCell.h      (原始)
    ├── AXNRequestWrapper.h/m (原始)
    ├── Tweak.h           (原始)
    ├── RandomHeaders.h   (原始)
    └── Protocol.h        (原始)
```

## 编译步骤

### 前提条件
安装 roothide 版 Theos:
```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/roothide/theos/master/bin/install-theos)"
```

### 一键编译
```bash
cd Axon-Roothide
chmod +x build.sh
./build.sh
```

### 手动编译
```bash
export THEOS_PACKAGE_SCHEME=roothide
make package
```

### 安装到设备
```bash
export THEOS_DEVICE_IP=你的设备IP
make package install
```

## 注意事项
- 仅适用于 **Roothide** 越狱环境
- 如需 Rootless，修改 `THEOS_PACKAGE_SCHEME=rootless`
- 如需 Rootful，删除 `THEOS_PACKAGE_SCHEME` 行
