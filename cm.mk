#
# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 320
TARGET_SCREEN_WIDTH := 240
TARGET_BOOTANIMATION_NAME := 240

# Inherit device configuration
$(call inherit-product, device/lge/vee3/vee3.mk)

# Release name
PRODUCT_RELEASE_NAME := OptimusL3II

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := vee3
PRODUCT_NAME := cm_vee3
PRODUCT_BRAND := LGE
PRODUCT_MODEL := VEE3
PRODUCT_MANUFACTURER := LGE

UTC_DATE := $(shell date +%s)
DATE := $(shell date +%Y%m%d)
