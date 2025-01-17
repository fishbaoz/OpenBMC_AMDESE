FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

OBMC_CONSOLE_HOST_TTY = "ttyS0"

SRC_URI_remove = "file://${BPN}.conf"
SRC_URI += "file://server.ttyS0.conf \
            file://0001-Route-io1-to-uart1.patch \
            "

do_install_append() {
	# Remove upstream-provided configuration
	rm -rf ${D}${sysconfdir}/${BPN}

	# Install the server configuration
	install -m 0755 -d ${D}${sysconfdir}/${BPN}
	install -m 0644 ${WORKDIR}/*.conf ${D}${sysconfdir}/${BPN}/
}
