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

# Project Vee3
# Enable this if you are building to L3 II Single
PROJECT_VEE3_SINGLE := false
# Disable this if you are not testing
PROJECT_VEE3_TESTZONE := false

LOCAL_PATH := device/lge/vee3

# inherit from the proprietary version
-include vendor/lge/vee3/BoardConfigVendor.mk

# inherit from the common proprietary version
-include vendor/lge/msm7x27a-common//BoardConfigVendor.mk

TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

BOARD_VENDOR := lge

# Compiler flags
TARGET_GLOBAL_CFLAGS += -mfloat-abi=softfp -mfpu=neon-vfpv4 -mtune=cortex-a5
TARGET_GLOBAL_CPPFLAGS += -mfloat-abi=softfp -mfpu=neon-vfpv4 -mtune=cortex-a5
COMMON_GLOBAL_CFLAGS += -DQCOM_BSP_ABI_HACK -DUSE_MDP3
COMMON_GLOBAL_CFLAGS += -DLPA_DEFAULT_BUFFER_SIZE=480
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK
COMMON_GLOBAL_CFLAGS += -DNO_UPDATE_PREVIEW
COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS
COMMON_GLOBAL_CFLAGS += -DQCOM_BSP_LEGACY

ifeq ($(PROJECT_VEE3_TESTZONE),true)
endif

# Compiler Optimization
ARCH_ARM_HIGH_OPTIMIZATION := true
ARCH_ARM_HIGH_OPTIMIZATION_COMPAT := true

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := 7x27
TARGET_BOARD_PLATFORM := msm7x27a
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_GRALLOC_USES_ASHMEM := true

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a5
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_CORTEX_CACHE_LINE_32 := true
ARCH_ARM_HAVE_32_BYTE_CACHE_LINES := true

# Try to build the kernel
TARGET_KERNEL_SOURCE := kernel/lge/VeeKernel

# Project Vee3
ifeq ($(PROJECT_VEE3_SINGLE),true)
	TARGET_KERNEL_CONFIG := cyanogenmod_vee3e_defconfig
else
	TARGET_KERNEL_CONFIG := cyanogenmod_vee3ds_defconfig
endif

# Kernel commands
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=vee3 androidboot.selinux=permissive
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

# Qualcomm hardware
BOARD_USES_QCOM_HARDWARE := true
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true

# GPS
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)

# Variant
TARGET_QCOM_AUDIO_VARIANT := caf
TARGET_QCOM_MEDIA_VARIANT := caf
TARGET_QCOM_DISPLAY_VARIANT := legacy

# Audio
TARGET_PROVIDES_LIBAUDIO := true
BOARD_QCOM_VOIP_ENABLED := true
BOARD_USES_LEGACY_ALSA_AUDIO := true
TARGET_HAS_QACT := true

# RIL
BOARD_RIL_CLASS := ../../../device/lge/vee3/ril/

# FM
BOARD_HAVE_QCOM_FM := true
QCOM_FM_ENABLED := true

# Display
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
USE_OPENGL_RENDERER := true
TARGET_USES_ION := true
TARGET_USES_QCOM_BSP_LEGACY := true
TARGET_DISPLAY_USE_RETIRE_FENCE := true
TARGET_NO_INITLOGO := true

# Screenshot
BOARD_USE_MHEAP_SCREENSHOT := true

# EGL
BOARD_EGL_WORKAROUND_BUG_10194508 := true
BOARD_EGL_CFG := $(LOCAL_PATH)/egl.cfg

# BT
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Light
TARGET_PROVIDES_LIBLIGHT := true

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true

# Add h/w acceleration in browser
ENABLE_WEBGL := true
WITH_JIT := true
ENABLE_JSC_JIT := true
JS_ENGINE := v8
HTTP := chrome

# Use Cpu Upload path (webkit)
TARGET_FORCE_CPU_UPLOAD := true

# SEPolicy
BOARD_SEPOLICY_DIRS += $(LOCAL_PATH)/sepolicy

BOARD_SEPOLICY_UNION += \
	app.te \
	device.te \
	file_contexts \
	rild.te \
	untrusted_app.te \
	vold.te \
	zygote.te \

# Bootanimation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Mass Storage
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file
BOARD_UMS_LUNFILE := /sys/class/android_usb/android0/f_mass_storage/lun/file

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
WIFI_EXT_MODULE_NAME := "librasdioif"
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_MODULE_NAME := "wlan"
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_P2P := "p2p"
WIFI_DRIVER_FW_PATH_PARAM := "/data/misc/wifi/fwpath"

# Recovery
ifeq ($(TARGET_USES_QCOM_BSP),true)
	RECOVERY_VARIANT := omni # Use TWRP if using QCOM_BSP, for now.
else
	RECOVERY_VARIANT := philz
endif
# Recovery Comands
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_FSTAB_VERSION := 2
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
TARGET_RECOVERY_QCOM_RTC_FIX := true
BOARD_USE_CUSTOM_RECOVERY_FONT := "<font_7x16.h>"
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true

# FSTAB
ifeq ($(RECOVERY_VARIANT),omni)
	TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/twrp.fstab
else
	TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/fstab.vee3
endif

# TWRP
ifeq ($(RECOVERY_VARIANT),omni)
	DEVICE_RESOLUTION := 240x240
	TW_INTERNAL_STORAGE_PATH := "/data/media"
	TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
	TW_EXTERNAL_STORAGE_PATH := "/external sd"
	TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
	TW_DEFAULT_EXTERNAL_STORAGE := true
	TW_FLASH_FROM_STORAGE := true
	TW_MAX_BRIGHTNESS := 255
	TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
else
	DEVICE_RESOLUTION := 240x320
endif
