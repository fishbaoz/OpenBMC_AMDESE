FILESEXTRAPATHS_prepend := "${THISDIR}/linux-aspeed:"

SRC_URI += "file://sp5.cfg \
            file://0001-ARM-dts-aspeed-Initial-device-tree-for-AMD-Onyx-Plat.patch \
            file://0002-ARM-dts-aspeed-Add-UART-changes-to-dts-for-SOL-enabl.patch \
            "
