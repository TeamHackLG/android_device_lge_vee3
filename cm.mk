## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 320
TARGET_SCREEN_WIDTH := 240

# Inherit device configuration
$(call inherit-product, device/lge/e435/e435.mk)

# Release name
PRODUCT_RELEASE_NAME := OptimusL3II

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := e435
PRODUCT_NAME := cm_e435
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG-E435
PRODUCT_MANUFACTURER := LGE
