#
# Copyright (C) 2015 The CyanogenMod Project
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

LOCAL_PATH := device/lge/e435

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product, vendor/lge/vee3/vee3-vendor.mk)

$(call inherit-product, vendor/lge/msm7x27a-common/msm7x27a-common-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

PRODUCT_AAPT_CONFIG := normal ldpi mdpi nodpi
PRODUCT_AAPT_PREF_CONFIG := ldpi

# Rootdir
PRODUCT_PACKAGES += \
    fstab.vee3 \
    init.vee3.rc \
    ueventd.vee3.rc \
    init.target.rc \
    init.qcom.usb.rc \
    init.qcom.usb.sh \
    init.qcom.class_main.sh \
    init.qcom.ril.path.sh \
    init.qcom.sh

# Configs
PRODUCT_PACKAGES += \
    7k_handset.kl \
    touch_mcs8000.kl \
    vee3_keypad.kl

# Config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    $(LOCAL_PATH)/configs/etc/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/configs/etc/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/etc/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/configs/etc/p2p_supplicant.conf:system/etc/p2p_supplicant.conf \
    $(LOCAL_PATH)/configs/etc/p2p_supplicant_overlay.conf:system/etc/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/etc/wpa_supplicant.conf:system/etc/wpa_supplicant.conf \
    $(LOCAL_PATH)/configs/etc/wpa_supplicant_overlay.conf:system/etc/wpa_supplicant_overlay.conf

# Charger
PRODUCT_PACKAGES += \
    chargerlogo \
    battery_charging_01.png \
    battery_charging_02.png \
    battery_charging_03.png \
    battery_charging_04.png \
    battery_charging_05.png \
    battery_charging_06.png \
    battery_charging_07.png \
    battery_charging_08.png \
    battery_charging_bg.png \
    battery_charging_complete.png \
    battery_charging_warning.png \
    battery_charging_warning_eng_1.png \
    battery_charging_warning_eng_2.png \
    battery_trickle_ani_01.png \
    battery_trickle_ani_02.png \
    battery_wait_ani_01.png \
    battery_wait_ani_01.png

# SoftAP files
PRODUCT_PACKAGES += \
    hostapd.accept \
    hostapd.deny \
    hostapd_default.conf

# Permission files
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml

# Display HALS
PRODUCT_PACKAGES += \
    copybit.msm7x27a \
    gralloc.msm7x27a \
    hwcomposer.msm7x27a \
    memtrack.msm7x27a \
    libc2dcolorconvert \
    liboverlay \
    libmemalloc \
    libtilerenderer \
    libgenlock \
    libqdutils \
    libqdMetaData

# Video
PRODUCT_PACKAGES += \
    libI420colorconvert \
    libstagefrighthw \
    libmm-omxcore \
    libdashplayer \
    libOmxCore

# Off-mode Charging
PRODUCT_PACKAGES += \
    charger \
    charger_res_images

# Gps
PRODUCT_PACKAGES += \
    gps.msm7x27a \
    gps.default \
    libgps.utils \
    libloc_adapter \
    libloc_eng \
    libloc_api-rpc-qc

# Power Hal
PRODUCT_PACKAGES += \
    power.msm7x27a

# Camera Hal
PRODUCT_PACKAGES += \
    camera.msm7x27a \
    libcamera \
    libmmcamera_interface2 \
    libmmjpeg_interface

# BT
PRODUCT_PACKAGES += \
    libbt-vendor

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    e2fsck \
    setup_fs

# WallPaper
PRODUCT_PACKAGES += \
    librs_jni \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.primary.msm7x27a \
    audio.usb.default \
    audio_policy.msm7x27a \
    libaudioutils

# Light HAL
PRODUCT_PACKAGES += \
    lights.msm7x27a

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory \
    libQWiFiSoftApCfg \
    libqcomvoiceprocessing

# Build.prop Properties
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Qcom properties
PRODUCT_PROPERTY_OVERRIDES += \
    com.qc.hardware=true \
    audio.gapless.playback.disable=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=/system/lib/libqc-opt.so \
    ro.sf.lcd_density=120

# For userdebug builds
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.adb.secure=0

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_e435
PRODUCT_DEVICE := e435
