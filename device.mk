#
# Copyright (C) 2015 The CyanogenMod Project
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

# This file includes all definitions that apply to ALL L3 II devices.
#
# Everything in this directory will become public

LOCAL_PATH := device/lge/vee3

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product, vendor/lge-vee3/vee3/vee3-vendor.mk)

$(call inherit-product, vendor/lge-vee3/msm7x27a-common/msm7x27a-common-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

PRODUCT_AAPT_CONFIG := normal ldpi mdpi nodpi
PRODUCT_AAPT_PREF_CONFIG := ldpi

# TWRP
PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/twrp.fstab:recovery/root/etc/twrp.fstab

# Vee3 Rootdir files
PRODUCT_PACKAGES += fstab.vee3
PRODUCT_PACKAGES += init.vee3.rc
PRODUCT_PACKAGES += ueventd.vee3.rc

# QCOM Rootdir files
PRODUCT_PACKAGES += fstab.qcom
PRODUCT_PACKAGES += init.qcom.baseband.sh
PRODUCT_PACKAGES += init.qcom.sh
PRODUCT_PACKAGES += init.qcom.usb.rc
PRODUCT_PACKAGES += init.qcom.usb.sh


# Config Files
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/etc/firmware/wlan/volans/WCN1314_cfg.dat:system/etc/firmware/wlan/volans/WCN1314_cfg.dat
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/etc/firmware/wlan/volans/WCN1314_qcom_cfg.ini:system/etc/firmware/wlan/volans/WCN1314_qcom_cfg.ini
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/etc/firmware/wlan/volans/WCN1314_qcom_fw.bin:system/etc/firmware/wlan/volans/WCN1314_qcom_fw.bin
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/etc/firmware/wlan/volans/WCN1314_qcom_wlan_nv.bin:system/etc/firmware/wlan/volans/WCN1314_qcom_wlan_nv.bin
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/etc/hostapd/hostapd.accept:system/etc/hostapd/hostapd.accept
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/etc/hostapd/hostapd.deny:system/etc/hostapd/hostapd.deny
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/etc/hostapd/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/etc/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/etc/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/etc/AudioFilter.csv:system/etc/AudioFilter.csv
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/etc/audio_policy.conf:system/etc/audio_policy.conf
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/etc/media_codecs.xml:system/etc/media_codecs.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/etc/media_profiles.xml:system/etc/media_profiles.xml
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/usr/keylayout/7x27a_kp.kl:system/usr/keylayout/7x27a_kp.kl
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/usr/keylayout/touch_mcs8000.kl:system/usr/keylayout/touch_mcs8000.kl
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/usr/keylayout/vee3_keypad.kl:system/usr/keylayout/vee3_keypad.kl

# Permission files
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Display HALS
PRODUCT_PACKAGES += copybit.msm7x27a
PRODUCT_PACKAGES += gralloc.msm7x27a
PRODUCT_PACKAGES += hwcomposer.msm7x27a
PRODUCT_PACKAGES += memtrack.msm7x27a
PRODUCT_PACKAGES += liboverlay
PRODUCT_PACKAGES += libtilerenderer
PRODUCT_PACKAGES += libgenlock
PRODUCT_PACKAGES += libqdMetaData

# Video
PRODUCT_PACKAGES += libstagefrighthw
PRODUCT_PACKAGES += libmm-omxcore
PRODUCT_PACKAGES += libOmxCore
PRODUCT_PACKAGES += libdashplayer

# Off-mode Charging
PRODUCT_PACKAGES += charger
PRODUCT_PACKAGES += charger_res_images

# Gps
PRODUCT_PACKAGES += gps.msm7x27a

# Power Hal
PRODUCT_PACKAGES += power.msm7x27a

# BT
PRODUCT_PACKAGES += libbt-vendor

# EXT4
PRODUCT_PACKAGES += make_ext4fs
PRODUCT_PACKAGES += e2fsck
PRODUCT_PACKAGES += setup_fs

# F2FS
ifeq ($(TARGET_USERIMAGES_USE_F2FS),true)
PRODUCT_PACKAGES += mkfs.f2fs
PRODUCT_PACKAGES += fsck.f2fs
PRODUCT_PACKAGES += fibmap.f2fs
endif

# Misc
PRODUCT_PACKAGES += com.android.future.usb.accessory

# Audio
PRODUCT_PACKAGES += libaudioutils
PRODUCT_PACKAGES += audio.a2dp.default
PRODUCT_PACKAGES += audio.usb.default
PRODUCT_PACKAGES += audio.primary.msm7x27a
PRODUCT_PACKAGES += audio_policy.msm7x27a
PRODUCT_PACKAGES += libaudio-resampler

# Light HAL
PRODUCT_PACKAGES += lights.msm7x27a

# Camera Hal
PRODUCT_PACKAGES += camera.msm7x27a

# Misc
PRODUCT_PACKAGES += com.android.future.usb.accessory
PRODUCT_PACKAGES += libQWiFiSoftApCfg
PRODUCT_PACKAGES += libqcomvoiceprocessing

include $(LOCAL_PATH)/system_prop.mk
