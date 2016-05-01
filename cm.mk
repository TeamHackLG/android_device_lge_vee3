# Copyright (C) 2015 The CyanogenMod Project
# Copyright (C) 2016 The TeamVee Project
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

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/vee3/full_vee3.mk)

TARGET_SCREEN_HEIGHT := 320
TARGET_SCREEN_WIDTH := 240

# Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_vee3
PRODUCT_RELEASE_NAME := L3 II

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Custom tag for v1 builds
ifeq ($(TARGET_KERNEL_V1_BUILD_DEVICE),true)
TARGET_UNOFFICIAL_BUILD_ID := v1
endif
