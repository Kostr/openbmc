DEPENDS:append:ibm-ac-server = " acx22-yaml-config"
DEPENDS:append:mihawk = " acx22-yaml-config"
DEPENDS:append:p10bmc = " p10bmc-yaml-config"

# host watchdog does not work with witherspoon-tacoma host firmware
RDEPENDS:${PN}:remove:witherspoon-tacoma = "phosphor-watchdog"

EXTRA_OEMESON:ibm-ac-server = " \
    -Dsensor-yaml-gen=${STAGING_DIR_HOST}${datadir}/acx22-yaml-config/ipmi-sensors.yaml \
    -Dinvsensor-yaml-gen=${STAGING_DIR_HOST}${datadir}/acx22-yaml-config/ipmi-inventory-sensors.yaml \
    -Dfru-yaml-gen=${STAGING_DIR_HOST}${datadir}/acx22-yaml-config/ipmi-fru-read.yaml \
    "
EXTRA_OEMESON:mihawk = " \
    -Dsensor-yaml-gen=${STAGING_DIR_HOST}${datadir}/acx22-yaml-config/ipmi-sensors.yaml \
    -Dinvsensor-yaml-gen=${STAGING_DIR_HOST}${datadir}/acx22-yaml-config/ipmi-inventory-sensors.yaml \
    -Dfru-yaml-gen=${STAGING_DIR_HOST}${datadir}/acx22-yaml-config/ipmi-fru-read.yaml \
    "
EXTRA_OEMESON:p10bmc = " \
    -Dfru-yaml-gen=${STAGING_DIR_HOST}${datadir}/p10bmc-yaml-config/ipmi-fru-read.yaml \
    "
