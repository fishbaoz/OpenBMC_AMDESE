SUMMARY = "AMD RAS application to handle RAS errors from BMC"
DESCRIPTION = "The applications harvests and handles the RAS errors from the processor"

LICENSE = "CLOSED"

FILESEXTRAPATHS_prepend := "${THISDIR}:"

inherit phosphor-mapper
inherit cmake pkgconfig systemd

def get_service(d):
    return "com.amd.crashdump.service"

SYSTEMD_SERVICE_${PN} = "${@get_service(d)}"
SRC_URI = "git://git@github.com:/AMDESE/amd-bmc-ras.git;branch=main;protocol=ssh"
SRCREV_pn-amd-ras = "${AUTOREV}"

S = "${WORKDIR}/git"

DEPENDS += " \
    amd-apml \
    i2c-tools \
    phosphor-dbus-interfaces \
    phosphor-logging \
    sdbusplus \
    libgpiod \
    boost \
    nlohmann-json \
    "

FILES_${PN} += "${systemd_unitdir}/system/com.amd.crashdump.service"
