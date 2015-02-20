# RILD
PRODUCT_PROPERTY_OVERRIDES += \
	rild.libpath=/system/lib/libril-qc-qmi-1.so \
	rild.libargs=-d[space]/dev/smd0 \
	persist.rild.nitz_plmn="" \
	persist.rild.nitz_long_ons_0="" \
	persist.rild.nitz_long_ons_1="" \
	persist.rild.nitz_long_ons_2="" \
	persist.rild.nitz_long_ons_3="" \
	persist.rild.nitz_short_ons_0="" \
	persist.rild.nitz_short_ons_1="" \
	persist.rild.nitz_short_ons_2="" \
	persist.rild.nitz_short_ons_3="" \

# Device
PRODUCT_PROPERTY_OVERRIDES += \
	DEVICE_PROVISIONED=1 \

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
	ro.ril.transmitpower=true \
	ril.subscription.types=NV,RUIM \
	ro.telephony.ril.v3=skippinpukcount,qcomdsds \

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
	ro.telephony.default_network=3 \
	ro.telephony.call_ring.delay=0 \
	ro.telephony.call_ring.multiple=0 \
	ro.use_data_netmgrd=true \

# SIM
PRODUCT_PROPERTY_OVERRIDES += \
	persist.service.factory.enable=0 \
	keyguard.no_require_sim=1 \
	persist.radio.apm_sim_not_pwdn=1 \

# Display Composition
PRODUCT_PROPERTY_OVERRIDES += \
	debug.sf.hw=1 \
	debug.composition.type=gpu \

# MM modules
PRODUCT_PROPERTY_OVERRIDES += \
	media.stagefright.enable-aac=true \
	media.stagefright.enable-fma2dp=true \
	media.stagefright.enable-http=true \
	media.stagefright.enable-meta=true \
	media.stagefright.enable-player=true \
	media.stagefright.enable-qcp=true \
	media.stagefright.enable-scan=true \

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
	audio.legacy.postproc=true \
	af.resampler.quality=255 \
	ro.qc.sdk.audio.fluencetype=none \
	audio.gapless.playback.disable=true \

# Data modules
PRODUCT_PROPERTY_OVERRIDES += \
	ro.use_data_netmgrd=true \
	persist.data.ds_fmc_app.mode=0 \

# IMS module
PRODUCT_PROPERTY_OVERRIDES += \
	persist.ims.regmanager.mode=0 \

# Disable strict mode flash on display
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.strictmode.visual=false \

# Enable/Disable OMH. Enabled by default
PRODUCT_PROPERTY_OVERRIDES += \
	persist.omh.enabled=1 \

# Enable ehrpd capability
PRODUCT_PROPERTY_OVERRIDES += \
	ro.config.ehrpd=true \

# Cabl
PRODUCT_PROPERTY_OVERRIDES += \
	ro.qualcomm.cabl=0 \

# SD Card
PRODUCT_PROPERTY_OVERRIDES += \
	ro.emmc.sdcard.partition=20 \
	persist.fuse_sdcard=true \

# Enforce Phone Mode view
PRODUCT_PROPERTY_OVERRIDES += \
	ro.screen.layout=normal \

# Baseband GSM Version
PRODUCT_PROPERTY_OVERRIDES += \
	gsm.version.baseband=MSM7225A-0-AB \

# On Strider below period is found to improve power numbers for AAC MP4
PRODUCT_PROPERTY_OVERRIDES += \
	dev.pm.dyn_sample_period=700000 \

# RAM
PRODUCT_PROPERTY_OVERRIDES += \
	ro.ksm.default=1 \
	ro.config.low_ram=true \

# Lcd Density
PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.lcd_density=120 \

# Debug
PRODUCT_PROPERTY_OVERRIDES += \
	debug.camcorder.disablemeta=0 \
	debug.gralloc.map_fb_memory=1 \
	debug.hwc.fakevsync=1 \

# QCom
PRODUCT_PROPERTY_OVERRIDES += \
	com.qc.hardware=1 \
	qcom.hw.aac.encoder=true \
	ro.vendor.extension_library=/system/lib/libqc-opt.so \

# WiFi
PRODUCT_PROPERTY_OVERRIDES += \
	wifi.interface=wlan0 \
	wifi.supplicant_scan_interval=20 \

# OpenGL
PRODUCT_PROPERTY_OVERRIDES += \
	ro.opengles.version=131072 \

# BG Apps
PRODUCT_PROPERTY_OVERRIDES += \
	ro.sys.fw.bg_apps_limit=20 \
	ro.config.max_starting_bg=8 \

# For userdebug builds
ADDITIONAL_DEFAULT_PROPERTIES += \
	ro.secure=0 \
	ro.adb.secure=0 \
