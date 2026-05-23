THEOS_DEVICE_IP = 192.168.1.100
export ARCHS = arm64 arm64e
TARGET := iphone:clang:latest:14.0

# Roothide support - 必须设置才能正确打包
THEOS_PACKAGE_SCHEME = roothide

INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Axon

Axon_FILES = Tweak/Tweak.xm Tweak/AXNView.m Tweak/AXNManager.m Tweak/AXNAppCell.m Tweak/AXNRequestWrapper.m
Axon_CFLAGS = -fobjc-arc
Axon_LIBRARIES = substrate
Axon_FRAMEWORKS = UIKit CoreGraphics
Axon_PRIVATE_FRAMEWORKS = MediaPlayer
Axon_EXTRA_FRAMEWORKS += Cephei

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
