# 清除缓存[可选]
rm -rf out
make ARCH=arm64 O=out clean
make ARCH=arm64 O=out mrproper
make ARCH=arm64 O=out distclean
# 应用配置
make CROSS_COMPILE=aarch64-linux-gnu- ARCH=arm64 O=out defconfig rockchip_linux_defconfig.config
# 编译
make CROSS_COMPILE=aarch64-linux-gnu- ARCH=arm64 O=out RK_KERNEL_DTS=ido-pi-oh3566-v1 -j24
