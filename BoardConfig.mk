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

LOCAL_PATH := device/lge/e435

# inherit from the proprietary version
-include vendor/lge/vee3/BoardConfigVendor.mk

# inherit from the common proprietary version
-include vendor/lge/msm7x27a-common//BoardConfigVendor.mk

TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Compiler flags
COMMON_GLOBAL_CFLAGS += -DUSE_MDP3
COMMON_GLOBAL_CFLAGS += -DLPA_DEFAULT_BUFFER_SIZE=480
TARGET_GLOBAL_CFLAGS += -mfpu=neon-vfpv4 -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon-vfpv4 -mfloat-abi=softfp

TARGET_NO_RADIOIMAGE := true
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := 7x27
TARGET_BOARD_PLATFORM := msm7x27a
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
BOARD_USES_ADRENO_200 := true
TARGET_GRALLOC_USES_ASHMEM := true

TARGET_CPU_SMP := true
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a5
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_CORTEX_CACHE_LINE_32 := true
ARCH_ARM_HAVE_32_BYTE_CACHE_LINES := true

# Try to build the kernel
TARGET_KERNEL_SOURCE := kernel/lge/p715
TARGET_KERNEL_CONFIG := cyanogenmod_vee3_defconfig

# Kernel commands
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_CMDLINE := androidboot.hardware=vee3 androidboot.selinux=permissive
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01300000
BOARD_KERNEL_PAGESIZE := 4096

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 12582912
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 12582912
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 958398464
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1876951040
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_VOLD_MAX_PARTITIONS := 26

# Recovery
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_FSTAB_VERSION := 2
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/etc/fstab.vee3
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
TARGET_RECOVERY_QCOM_RTC_FIX := true
BOARD_USE_CUSTOM_RECOVERY_FONT := "<font_7x16.h>"
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_RECOVERY_SWIPE := true

# QCom
BOARD_USES_QCOM_HARDWARE := true
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true

# GPS
QCOM_GPS_PATH := hardware/qcom/gps
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)

# Media
TARGET_QCOM_MEDIA_VARIANT := caf

# Audio
TARGET_QCOM_AUDIO_VARIANT := caf
TARGET_PROVIDES_LIBAUDIO := true
BOARD_QCOM_VOIP_ENABLED := true
BOARD_USES_ALSA_AUDIO:= true
BOARD_USES_LEGACY_ALSA_AUDIO := true
TARGET_HAS_QACT := true
BOARD_NO_SPEAKER := true

# Display
TARGET_QCOM_DISPLAY_VARIANT := legacy
TARGET_QCOM_LEGACY_OMX := true
USE_OPENGL_RENDERER := true
TARGET_USES_ION := true
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
TARGET_DISPLAY_USE_RETIRE_FENCE := true
TARGET_NO_INITLOGO := true
HWUI_COMPILE_FOR_PERF := true

# EGL
BOARD_EGL_WORKAROUND_BUG_10194508 := true
BOARD_EGL_CFG := $(LOCAL_PATH)/egl.cfg

# Camera
COMMON_GLOBAL_CFLAGS += -DMR0_CAMERA_BLOB -DQCOM_BSP_CAMERA_ABI_HACK
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DQCOM_NO_SECURE_PLAYBACK
COMMON_GLOBAL_CFLAGS += -DQCOM_LEGACY_OMX

# BT
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Light
TARGET_PROVIDES_LIBLIGHT := true

# SEPolicy
BOARD_SEPOLICY_DIRS := \
       $(LOCAL_PATH)/sepolicy

BOARD_SEPOLICY_UNION := \
       device.te \
       app.te \
       file_contexts \
       untrusted_app.te \
       vold.te \
       zygote.te

# Bootanimation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

## Mass Storage
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file
BOARD_UMS_LUNFILE := /sys/class/android_usb/android0/f_mass_storage/lun/file

DEVICE_RESOLUTION := 240x320

# Wlan
BOARD_HAS_QCOM_WLAN := true
BOARD_HAS_QCOM_WLAN_SDK := true
BOARD_WLAN_DEVICE := qcwcn
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_EXT_MODULE_PATH := "/system/lib/modules/librasdioif.ko"
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/wlan.ko"
WIFI_EXT_MODULE_NAME := "librasdioif"
WIFI_DRIVER_MODULE_NAME := "wlan"
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_P2P := "p2p"
BOARD_LEGACY_NL80211_STA_EVENTS := true
