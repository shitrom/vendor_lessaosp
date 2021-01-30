# Inherit full common Lineage stuff
$(call inherit-product, vendor/lessaosp/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Include Lineage LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/lessaosp/overlay/dictionaries

$(call inherit-product, vendor/lessaosp/config/telephony.mk)
