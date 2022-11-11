FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append = "\
            file://sram.cfg \
            file://REMOTEPROC.cfg \
            file://disable_soc_snd.cfg \           
"

SRC_URI_append_adsp-sc594-som-ezkit = "\
            file://0001-5_4_IOCTL-call-to-get-last-used-physical-address.patch \
"
SRC_URI_append_adsp-sc589-ezkit = "\
            file://0001-SC58x-Expand-L2-space.patch \
"
SRC_URI_append_adsp-sc584-ezkit = "\
            file://0001-SC58x-Expand-L2-space.patch \
"
SRC_URI_append_adsp-sc573-ezkit = "\
            file://0001-SC57x-Expand-sram1-to-end-of-L2-memory.patch \
"
SRC_URI_append_adsp-sc598-som-ezkit = "\
            file://0001-SC598-family-move-L2-region-to-20104000.patch \
            file://0001-5_4_IOCTL-call-to-get-last-used-physical-address.patch \
"

KERNEL_FEATURES_remove_adsp-sc573-ezkit = " ${WORKDIR}/feature/snd_ezkit.scc"
KERNEL_FEATURES_remove_adsp-sc589-ezkit = " ${WORKDIR}/feature/snd_ezkit.scc"
KERNEL_FEATURES_remove_adsp-sc584-ezkit = " ${WORKDIR}/feature/snd_ezkit.scc"
KERNEL_FEATURES_remove_adsp-sc594-som-ezkit = " ${WORKDIR}/feature/snd_ezkit.scc"
KERNEL_FEATURES_remove_adsp-sc598-som-ezkit = " ${WORKDIR}/feature/snd_ezkit.scc"

COMPATIBLE_MACHINE = "(adsp-sc573-ezkit|adsp-sc584-ezkit|adsp-sc589-ezkit|adsp-sc589-mini|adsp-sc594-som-ezkit|adsp-sc598-som-ezkit)"