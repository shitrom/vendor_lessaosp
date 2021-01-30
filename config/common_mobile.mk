# Inherit common mobile Lineage stuff
$(call inherit-product, vendor/lessaosp/config/common.mk)

# Default notification/alarm sounds
PRODUCT_PRODUCT_PROPERTIES += \
    ro.config.notification_sound=Argon.ogg \
    ro.config.alarm_alert=Hassium.ogg

ifneq ($(TARGET_BUILD_VARIANT),user)
# Thank you, please drive thru!
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += persist.sys.dun.override=0
endif

# Optional packages
PRODUCT_PACKAGES += \
    LiveWallpapersPicker \
    PhotoTable

# AOSP packages
PRODUCT_PACKAGES += \
    ExactCalculator \

# Lineage packages
PRODUCT_PACKAGES += \
    Seedvault

# Customizations
PRODUCT_PACKAGES += \
    IconShapeSquareOverlay \
    NavigationBarMode2ButtonOverlay

# Media
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    media.recorder.show_manufacturer_and_model=true
