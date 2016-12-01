# Copyright 2016 The Android Open Source Project
# Copyright 2016 TeamHacklG
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file includes all definitions that apply to ALL L3II devices
# Everything in this directory will become public

$(call inherit-product, device/lge/msm7x27a-common/msm7x27a-common.mk)
$(call inherit-product-if-exists, vendor/lge/vee3/vee3-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/vee3/overlay

PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := ldpi

# Boot animation
TARGET_BOOTANIMATION_HALF_RES := true
TARGET_SCREEN_HEIGHT := 320
TARGET_SCREEN_WIDTH := 240

PRODUCT_COPY_FILES += \
    device/lge/vee3/rootdir/root/fstab.vee3:root/fstab.vee3 \
    device/lge/vee3/rootdir/root/init.vee3.rc:root/init.vee3.rc \
    device/lge/vee3/rootdir/root/init.vee3ds.sh:root/init.vee3ds.sh \
    device/lge/vee3/rootdir/root/ueventd.vee3.rc:root/ueventd.vee3.rc

PRODUCT_COPY_FILES += \
    device/lge/vee3/rootdir/system/usr/keylayout/touch_mcs8000.kl:system/usr/keylayout/touch_mcs8000.kl \
    device/lge/vee3/rootdir/system/usr/keylayout/vee3_keypad.kl:system/usr/keylayout/vee3_keypad.kl

PRODUCT_COPY_FILES += \
    device/lge/msm7x27a-common/rootdir/system/etc/gen2_media_profiles.xml:system/etc/media_profiles.xml

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density="120" \
    ro.screen.layout="normal"
