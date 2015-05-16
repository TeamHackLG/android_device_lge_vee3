# For userdebug builds
ifeq ($(TARGET_BUILD_VARIANT),userdebug)
ADDITIONAL_DEFAULT_PROPERTIES += \
	ro.secure=false \
	ro.adb.secure=false
endif

# USB
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	persist.sys.usb.config=mtp \

# QCOM
PRODUCT_PROPERTY_OVERRIDES += \
	com.qc.hardware=true \
	ro.vendor.extension_library=/system/lib/libqc-opt.so \

# OpenGL
PRODUCT_PROPERTY_OVERRIDES += \
	ro.opengles.version=131072 \

# WiFi
PRODUCT_PROPERTY_OVERRIDES += \
	wifi.interface=wlan0 \

# KSM
PRODUCT_PROPERTY_OVERRIDES += \
	ro.ksm.default=true \

# Lcd Density
PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.lcd_density=120 \

# Enforce Phone Mode view
PRODUCT_PROPERTY_OVERRIDES += \
	ro.screen.layout=normal \

# Display Composition
PRODUCT_PROPERTY_OVERRIDES += \
	debug.sf.hw=true \
	debug.composition.type=dyn \
	persist.hwc.mdpcomp.enable=false \

# Media StageFright
PRODUCT_PROPERTY_OVERRIDES += \
	media.stagefright.enable-player=true \
	media.stagefright.enable-meta=false \
	media.stagefright.enable-scan=true \
	media.stagefright.enable-http=true \
	media.stagefright.enable-fma2dp=true \
	media.stagefright.enable-aac=true \
	media.stagefright.enable-qcp=true \

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
	rild.libpath=/system/lib/libril-qc-qmi-1.so \
	rild.libargs=-d /dev/smd0 \
	ril.subscription.types=NV,RUIM \
	ro.telephony.ril.v3=skippinpukcount,qcomdsds,signalstrength \
	ro.telephony.call_ring.multiple=false \
	ro.telephony.call_ring=false \

# Debug
PRODUCT_PROPERTY_OVERRIDES += \
	debug.gralloc.map_fb_memory=true \
	debug.hwc.fakevsync=true \
