include vendor/lessaosp/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/lessaosp/config/BoardConfigQcom.mk
endif

include vendor/lessaosp/config/BoardConfigSoong.mk
