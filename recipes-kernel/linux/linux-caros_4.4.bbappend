FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://nca1010-config.cfg \
            file://nca1010-features.scc"

COMPATIBLE_MACHINE_lanner-nca1010 = "lanner-nca1010"

KBRANCH_lanner-nca1010 = "standard/base"
KMACHINE_lanner-nca1010 = "common-pc-64"

# Lanner choosed to reserve the GPIO and LPC IO regions in
# the DSDT without providing the appropriate access specs
# with them, see ACPI 5.0, Sect. 5.6.5 on how it should be.
# work around the arrising ACPI resource conflict:
APPEND += "acpi_enforce_resources=lax"
