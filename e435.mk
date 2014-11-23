$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/lge/e435/e435-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

PRODUCT_AAPT_CONFIG := normal mdpi ldpi
PRODUCT_AAPT_PREF_CONFIG := ldpi

# Rootdir
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/fstab.e435:root/fstab.e435 \
	$(LOCAL_PATH)/rootdir/init.e435.rc:root/init.e435.rc \
	$(LOCAL_PATH)/rootdir/init.e435.usb.rc:root/init.e435.usb.rc \
	$(LOCAL_PATH)/rootdir/ueventd.e435.rc:root/ueventd.e435.rc \
	$(LOCAL_PATH)/rootdir/init.lge.usb.sh:root/init.lge.usb.sh \
	$(LOCAL_PATH)/rootdir/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
	$(LOCAL_PATH)/rootdir/init.qcom.class_main.sh:root/init.qcom.class_main.sh\
	$(LOCAL_PATH)/rootdir/init.qcom.sh:root/init.qcom.sh

# Configs
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
	$(LOCAL_PATH)/configs/7x27a_kp.kl:system/usr/keylayout/7x27a_kp.kl \
	$(LOCAL_PATH)/configs/AudioFilter.csv:system/etc/AudioFilter.csv \
	$(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
	$(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml \
	$(LOCAL_PATH)/configs/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
	$(LOCAL_PATH)/configs/touch_mcs8000.idc:system/usr/idc/touch_mcs8000.idc \
	$(LOCAL_PATH)/configs/touch_mcs8000.kl:system/usr/keylayout/touch_mcs8000.kl \
	$(LOCAL_PATH)/configs/e435_keypad.kl:system/usr/keylayout/e435_keypad.kl \
	$(LOCAL_PATH)/configs/vold.fstab:system/etc/vold.fstab

# Wlan
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/wlan/firmware/WCN1314_qcom_wlan_nv.bin:system/etc/firmware/wlan/volans/WCN1314_qcom_wlan_nv.bin \
	$(LOCAL_PATH)/wlan/firmware/WCN1314_qcom_fw.bin:system/etc/firmware/wlan/volans/WCN1314_qcom_fw.bin \
	$(LOCAL_PATH)/wlan/firmware/WCN1314_cfg.dat:system/etc/firmware/wlan/volans/WCN1314_cfg.dat \
	$(LOCAL_PATH)/wlan/firmware/WCN1314_qcom_cfg.ini:system/etc/firmware/wlan/volans/WCN1314_qcom_cfg.ini

# Permission files
PRODUCT_COPY_FILES := \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml

# Live Wallpapers
PRODUCT_PACKAGES += \
        LiveWallpapers \
        LiveWallpapersPicker \
        VisualizationWallpapers \
        librs_jni

# Audio
PRODUCT_PACKAGES += \
	audio.primary.msm7x27a \
	audio.a2dp.default \
	audio_policy.msm7x27a \
	audio_policy.conf
	
# MM_AUDIO
PRODUCT_PACKAGES += \
	libOmxAacDec \
	libOmxAacEnc \
	libOmxAmrEnc \
	libOmxEvrcEnc \
	libOmxMp3Dec \
	libOmxQcelp13Enc \
	libOmxAc3HwDec

# GPS
PRODUCT_PACKAGES += \
	gps.msm7x27a \
	gps.mahimahi \
	libloc_adapter \
	libgps.utils \
	libloc_eng \
	libloc_api_v02

# HOSTAPD
PRODUCT_PACKAGES += \
	hostapd \
	hostapd_cli \
	hostapd.conf \
	hostapd_default.conf \
	hostapd.deny \
	hostapd.accept

# LIBCAMERA
PRODUCT_PACKAGES += \
	libcamera \
	camera.msm7x27a \
	libmmcamera_interface2 \
	libmmjpeg_interface

# LIBGRALLOC
PRODUCT_PACKAGES += \
	gralloc.msm7x27a \
	libmemalloc \
	lights.msm7x27a \
	hwcomposer.msm7x27a \
	power.msm7x27a \
	copybit.msm7x27a \

# LIBAUDIOPARAM
PRODUCT_PACKAGES += \
	libaudioparameter \
	liboverlay \
	overlay.default \
	libgenlock \
	libqdutils \
	libqdMetaData

# MEDIA_PROFILES
PRODUCT_PACKAGES += \
	media_profiles.xml

PRODUCT_PACKAGES += \
        libmm-omxcore \
	libdivxdrmdecrypt \
	libOmxVdec \
	libOmxVenc \
	libOmxCore \
	libstagefrighthw \
	libc2dcolorconvert

# MM_VIDEO
PRODUCT_PACKAGES += \
	libdivxdrmdecrypt \
	liblasic \
	libOmxVidEnc \
	mm-vdec-omx-property-mgr

# OMX
PRODUCT_PACKAGES += \
	libomx_aacdec_sharedlibrary \
	libomx_amrdec_sharedlibrary \
	libomx_amrenc_sharedlibrary \
	libomx_avcdec_sharedlibrary \
	libomx_m4vdec_sharedlibrary \
	libomx_mp3dec_sharedlibrary \
	libomx_sharedlibrary \
	libomx_amr_component_lib

# WPA
PRODUCT_PACKAGES += \
	wpa_supplicant.conf

# off-mode charging
PRODUCT_PACKAGES += \
	charger \
	charger_res_images

# Filesystem management tools
PRODUCT_PACKAGES += \
	make_ext4fs \
	e2fsck \
	setup_fs

# Misc
PRODUCT_PACKAGES += \
	com.android.future.usb.accessory

# Build.prop Properties
PRODUCT_PROPERTY_OVERRIDES += \
	com.qc.hardware=true \
	ro.opengles.version=131072

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	persist.sys.usb.config=mtp

PRODUCT_PROPERTY_OVERRIDES += \
	ro.vendor.extension_library=/system/lib/libqc-opt.so

PRODUCT_PROPERTY_OVERRIDES += \
	rild.libpath=/system/lib/libril-qc-qmi-1.so \
	rild.libargs=-d/dev/smd0

PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.lcd_density=120 \
	debug.camcorder.disablemeta=1

PRODUCT_PROPERTY_OVERRIDES += \
	persist.fuse_sdcard=true \
	ro.emmc.sdcard.partition=20

PRODUCT_PROPERTY_OVERRIDES += \
	media.stagefright.enable-player=true \
	media.stagefright.enable-meta=false \
	media.stagefright.enable-scan=true \
	media.stagefright.enable-http=true \
	media.stagefright.enable-fma2dp=true \
	media.stagefright.enable-aac=true \
	media.stagefright.enable-qcp=true

# Voice processing
PRODUCT_PACKAGES += libqcomvoiceprocessing

PRODUCT_PACKAGES += Torch

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_e435
PRODUCT_DEVICE := e435
