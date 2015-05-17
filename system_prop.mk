# For userdebug builds
ifeq ($(TARGET_BUILD_VARIANT),userdebug)
# Enable ADB by default
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=false ro.adb.secure=false
endif
# For Single and Dual Sim devices
ifeq ($(PROJECT_VEE3_SINGLE),true)
# Single Sim
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += persist.radio.multisim.config=none
else
# Dual Sim
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += persist.radio.multisim.config=dsds
endif
# USB
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += persist.sys.usb.config=mtp
# QCOM
PRODUCT_PROPERTY_OVERRIDES += com.qc.hardware=true
# Vendor Lib
PRODUCT_PROPERTY_OVERRIDES += ro.vendor.extension_library=/system/lib/libqc-opt.so
# OpenGL
PRODUCT_PROPERTY_OVERRIDES += ro.opengles.version=131072
# WiFi
PRODUCT_PROPERTY_OVERRIDES += wifi.interface=wlan0
# KSM
PRODUCT_PROPERTY_OVERRIDES += ro.ksm.default=true
# Lcd Density
PRODUCT_PROPERTY_OVERRIDES += ro.sf.lcd_density=120
# Enforce Phone Mode view
PRODUCT_PROPERTY_OVERRIDES += ro.screen.layout=normal
# Display Composition
PRODUCT_PROPERTY_OVERRIDES += debug.composition.type=dyn
PRODUCT_PROPERTY_OVERRIDES += persist.hwc.mdpcomp.enable=false
# Use Hardware Rendering
PRODUCT_PROPERTY_OVERRIDES += debug.sf.hw=true
# Media StageFright
PRODUCT_PROPERTY_OVERRIDES += media.stagefright.enable-player=true
PRODUCT_PROPERTY_OVERRIDES += media.stagefright.enable-meta=false
PRODUCT_PROPERTY_OVERRIDES += media.stagefright.enable-scan=true
PRODUCT_PROPERTY_OVERRIDES += media.stagefright.enable-http=true
PRODUCT_PROPERTY_OVERRIDES += media.stagefright.enable-fma2dp=true
PRODUCT_PROPERTY_OVERRIDES += media.stagefright.enable-aac=true
PRODUCT_PROPERTY_OVERRIDES += media.stagefright.enable-qcp=true
# RIL
PRODUCT_PROPERTY_OVERRIDES += rild.libpath=/system/lib/libril-qc-qmi-1.so
PRODUCT_PROPERTY_OVERRIDES += ril.subscription.types=NV,RUIM
PRODUCT_PROPERTY_OVERRIDES += ro.telephony.ril.v3=skippinpukcount,qcomdsds,signalstrength
PRODUCT_PROPERTY_OVERRIDES += ro.telephony.call_ring.multiple=false
PRODUCT_PROPERTY_OVERRIDES += ro.telephony.call_ring=false
PRODUCT_PROPERTY_OVERRIDES += rild.libargs="-d /dev/smd0"
# Debug
PRODUCT_PROPERTY_OVERRIDES += debug.gralloc.map_fb_memory=true
PRODUCT_PROPERTY_OVERRIDES += debug.hwc.fakevsync=true
