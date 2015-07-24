#
# Copyright (C) 2015 The Dirty Unicorns Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# 	http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Get the long list of APNs
PRODUCT_COPY_FILES := vendor/du/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/lge/vee3/full_vee3.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/du/config/common.mk)
$(call inherit-product, vendor/du/config/gsm.mk)

# Inherit from device-specific configurations
$(call inherit-product, device/lge/vee3/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := vee3
PRODUCT_NAME := du_vee3
PRODUCT_BRAND := LGE
PRODUCT_MANUFACTURER := LGE
PRODUCT_MODEL := L3 II
PRODUCT_RELEASE_NAME := L3 II
