ARCH:=aarch64
SUBTARGET:=filogic
BOARDNAME:=Filogic 8x0 (MT798x)
CPU_TYPE:=cortex-a53
DEFAULT_PACKAGES += fitblk kmod-phy-aquantia kmod-crypto-hw-safexcel wpad-openssl uboot-envtools
KERNELNAME:=Image dtbs

define Target/Description
	Build firmware images for MediaTek Filogic ARM based boards.
endef

# -----------------------
# 新增 N60-Pro 设备条目
define Device/netcore_n60_pro
  DTS := mt7986a-netcore-n60-pro.dts
  IMAGE_SIZE := 16064k
  DEVICE_PACKAGES := kmod-leds kmod-button-hotplug
endef

TARGET_DEVICES += netcore_n60_pro
