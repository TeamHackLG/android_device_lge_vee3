# Check for target product
ifeq (pac_vee3,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_hdpi

# Copy bootanimation
PRODUCT_COPY_FILES += vendor/pac/prebuilt/240x400/bootanimation.zip:system/media/bootanimation.zip

# include PAC common configuration
include vendor/pac/config/pac_common.mk

# Inherit CM device configuration
$(call inherit-product, device/lge/vee3/cm.mk)

PRODUCT_NAME := pac_vee3

endif
