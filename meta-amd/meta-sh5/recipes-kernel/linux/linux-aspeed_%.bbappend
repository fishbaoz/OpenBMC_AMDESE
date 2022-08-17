FILESEXTRAPATHS_prepend := "${THISDIR}/linux-aspeed:"

SRC_URI += "file://sh5.cfg \
            file://0001-ARM-dts-aspeed-Initial-device-tree-for-AMD-Onyx-Plat.patch \
            file://0002-ARM-dts-aspeed-Add-UART-changes-to-dts-for-SOL-enabl.patch \
            file://0003-ARM-dts-aspeed-Add-I2C-updates-to-dts-for-sensors.patch \
            file://0004-ARM-dts-aspeed-Add-kcs-ports-in-onyx.patch \
            file://0005-ARM-dts-aspeed-Add-device-tree-entry-for-SPI2.patch \
            file://0006-ARM-dts-aspeed-Add-device-tree-entry-for-GPIO0-bank.patch \
            file://0007-ARM-dts-aspeed-Add-device-tree-entry-for-JTAG.patch \
            file://0008-drivers-jtag-Add-Aspeed-SoC-24xx-25xx-26xx-families-.patch \
            file://0009-drivers-hwmon-pmbus-Adding-support-for-XDPE192xxx-an.patch \
            file://0010-ARM-dts-aspeed-Adding-device-tree-entries-for-Voltag.patch \
            file://0011-ARM-dts-aspeed-Add-device-tree-entries-to-enable-KVM.patch \
            file://0012-ARM-dts-aspeed-Add-Fan-controllers-to-dts.patch \
            file://0013-drivers-jtag-Fix-incorrect-TRST-implementation.patch \
            file://0014-drivers-i3c-Add-ast2600-i3c-patch.patch \
            file://0015-ARM-dts-aspeed-Add-I3C-controllers-to-dtsi-files-and.patch \
            file://0016-ARM-dts-aspeed-Add-I3C-entries-to-Onyx-dts-file.patch \
            file://0017-ARM-dts-aspeed-Correct-register-space-size-for-JTAG-.patch \
            file://0018-ARM-dts-aspeed-Quartz-initial-device-tree.patch \
            file://0019-ARM-dts-aspeed-Quartz-dts-fan-i2c-channels-add.patch \
            file://0020-ARM-dts-aspeed-Add-PSP-Soft-fuse-gpios.patch \
            file://0021-ARM-dts-aspeed-Adding-DIMM-SPD-slaves-to-the-device-.patch \
            file://0022-ARM-dts-aspeed-Adding-P0-P1-DIMM-SPD-slaves-to-the-Q.patch \
            file://0023-ARM-dts-aspeed-APML-over-I2C-device-tree-support-for.patch \
            file://0024-ARM-dts-aspeed-Add-Ruby-initial-device-tree.patch \
            file://0025-ARM-dts-aspeed-Add-Quartz-DTS-Temp-sensor.patch \
            file://0026-ARM-dts-aspeed-enable-espi-controller-in-onyx.patch \
            file://0027-ARM-dts-aspeed-enable-espi-controller-in-ruby.patch \
            file://0028-ARM-dts-aspeed-enable-espi-controller-in-quartz.patch \
            file://0029-drivers-soc-aspeed-espi-drv-addition.patch \
            file://0030-ARM-dts-aspeed-Add-led-definitions-for-fault-and-ide.patch \
            file://0031-hwmon-Add-support-for-SB-RMI-power-module.patch \
            file://0032-hwmon-sbrmi-Add-Documentation.patch \
            file://0033-dt-bindings-sbrmi-Add-SB-RMI-hwmon-driver-bindings.patch \
            file://0034-ARM-dts-aspeed-Add-dts-support-for-sbrmi-module-for-.patch \
            file://0035-ARM-dts-aspeed-Add-Titanite-initial-device-tree.patch \
            file://0038-recipes-kernel-linux-Adding-emc2301-driver-for-emc2305.patch \
            file://0039-ARM-dts-aspeed-Add-Onyx-and-Quartz-dts-fan-nodes.patch \
            file://0041-drivers-soc-aspeed-add-lpc-pcc-driver.patch \
            file://0042-ARM-dts-aspeed-Add-LPC-PCC-dts-for-sp5.patch \
            file://0043-ARM-dts-aspeed-enable-kcs-interface-for-SP5-platform.patch \
            file://0044-ARM-dts-aspeed-add-memory-region-to-LPC-PCC-for-sp5.patch \
            file://0045-ARM-dts-aspeed-add-board-eeproms-for-sp5-platforms.patch \
            file://0046-drivers-soc-aspeed-pcc-Enable-port-80h-83h-snooping.patch \
            file://0047-ARM-dts-aspeed-enable-pcc-record-mode-for-SP5-platfo.patch \
            file://0048-drivers-mtd-spi-nor-Add-support-for-Gigadevice-flash.patch \
            file://0049-linux-drivers-Update-JTAG-drivers-from-Aspeed.patch \
            file://0050-ARM-dts-aspeed-Add-Ruby-dts-fan-and-sb-tsi-nodes.patch \
            file://0051-linux-drivers-Add-fan-driver-for-titanite.patch \
            file://0052-ARM-dts-aspeed-Remove-board-SPD-for-sp5-platforms.patch\
            file://0053-linux-drivers-change-i2c-1-freq-to-50KHz-for-LCD.patch \
            file://0054-ARM-dts-aspeed-Remove-LCD-Mux-for-sp5.patch \
            file://0055-drivers-jtag-Add-runtest-IOCTL.patch \
            file://0056-ARM-dts-aspeed-Add-Quartz-VR-sensors-nodes.patch \
            file://0057-ARM-dts-aspeed-Increase-bus-frequency-for-APML-i2c-b.patch \
            file://0058-linux-drivers-Add-tmp468-Temp-sensor-driver.patch \
            file://0059-ARM-dts-aspeed-Add-Onyx-dts-adc121c-and-tmp468-sensor.patch \
            file://0060-drivers-soc-aspeed-Add-UDMA-driver.patch \
            file://0061-drivers-tty-serial-8250-Add-ASPEED-8250-driver.patch \
            file://0062-add-UDMA-engine-node-to-aspeed-g6.patch \
            file://0063-ARM-dts-aspeed-enable-uart-dma-drivers-for-host-console.patch \
            file://0064-ARM-dts-aspeed-Modify-Onyx-dts-for-iio-channel-issue.patch \
            file://0065-linux-driver-hwmon-Modify-hwmon-driver-for-dbg-msg.patch \
            file://0066-ARM-dts-aspeed-Add-Quartz-dts-adc121c-sensors.patch \
            file://0067-ARM-dts-aspeed-Add-Titanite-dts-adc121c-sensors.patch \
            file://0068-ARM-dts-aspeed-Add-Ruby-device-tree-VR-sensors.patch \
            file://0069-ARM-dts-aspeed-Modify-Ruby-dts-for-adc121-sensors.patch \
            file://0070-linux-aspeed-Add-I3C-changes-for-SP5.patch  \
            file://0071-ARM-dts-aspeed-Add-I3C-DIMM-and-CPU-RAS-devices.patch \
            file://0072-ARM-dts-aspeed-add-espi-virtual-uart.patch \
            file://0073-ARM-dts-aspeed-Add-identify-and-fault-LEDs-with-Titanite.patch \
            file://0074-drivers-media-Handle-video-engine-spurious-interrupt.patch \
            file://0075-ARM-dts-aspeed-Add-NC-SI-configuration-to-all-dts.patch \
            file://0076-ARM-dts-aspeed-conditional-enablement-of-MB-eeproms.patch \
            file://0077-ARM-dts-aspeed-Device-tree-changes-for-APML_ALERT_L.patch \
            file://0078-linux-net-Modify-temp-fix-for-nc-si-tx-timeout-warni.patch \
            file://0079-ARM-dts-aspeed-Add-I3C-APML-devices.patch \
            file://0080-linux-aspeed-set-APML-devs-to-dynamic-addr.patch \
            file://0081-hwmon-Add-support-for-sbrmi-driveri-over-I3C.patch \
            file://0082-hwmon-Add-support-for-sbtsi-driver-over-I3C.patch \
            file://0083-linux-aspeed-Set-I3C-SDA-TX-HOLD-to-3.patch \
            file://0084-linux-aspeed-Add-Aspeed-MCTP-over-PCIe-driver.patch \
            file://0085-linux-aspeed-Modify-device-trees-to-MCTP-enable.patch \
            file://0086-i3c-Correct-the-macro-module_i3c_i2c_driver.patch \
            file://0087-misc-amd-apml-Add-AMD-APML-interface-drivers.patch \
            file://0088-ARM-dts-aspeed-enable-I3C-DIMM-devices.patch \
            file://0089-linux-aspeed-Add-group-for-DIMMs.patch \
            file://0090-linux-aspeed-Modify-disabled-MCTP-header-data_dump.patch \
            file://0091-apml_modules-add-WITH-Linux-syscall-note-to-SPDX-tag.patch \
            file://0092-linux-aspeed-change-i3c-error-to-info-message.patch \
            file://0093-drivers-mtd-spi-nor-Add-support-for-Macronix-flash.patch \
            file://0094-drivers-misc-amd-apml-sbrmi-add-dimm-temperatures.patch \
            file://0095-ARM-dts-aspeed-Add-new-GPIO-for-PMIC-Error.patch \
            file://0096-ARM-dts-aspeed-Add-DIMM-devices-for-CH2-in-Ruby.patch \
            file://0097-linux-aspeed-Sensor-threshold-tuned-as-per-provided.patch \
            file://0098-Linux-aspeed-Fix-for-PVDD11_S3_P1-VR-Titanite-sensor.patch \
            file://0101-linux-aspeed-Add-Initial-device-tree-for-sh5d807-platform.patch \
            file://0102-linux-aspeed-Add-Initail-device-tree-for-Sidley-platform.patch \
            file://0103-linux-aspeed-Add-Initial-device-tree-for-Parry-Peak-platform.patch \
            "