# For userdebug builds
ifeq ($(TARGET_BUILD_VARIANT),userdebug)
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure="false"
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure="false"
endif
# For Dual Sim devices
ifeq ($(TARGET_DUAL_SIM),true)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += persist.radio.multisim.config="dsds"
endif
# USB
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += persist.sys.usb.config="mtp"
# QCOM
PRODUCT_PROPERTY_OVERRIDES += com.qc.hardware="true"
# Vendor Lib
PRODUCT_PROPERTY_OVERRIDES += ro.vendor.extension_library="/system/lib/libqc-opt.so"
# OpenGL
PRODUCT_PROPERTY_OVERRIDES += ro.opengles.version="131072"
# WiFi
PRODUCT_PROPERTY_OVERRIDES += wifi.interface="wlan0"
# KSM
PRODUCT_PROPERTY_OVERRIDES += ro.ksm.default="true"
# Lcd Density
PRODUCT_PROPERTY_OVERRIDES += ro.sf.lcd_density="120"
# Enforce Phone Mode view
PRODUCT_PROPERTY_OVERRIDES += ro.screen.layout="normal"
# Display Composition
PRODUCT_PROPERTY_OVERRIDES += debug.composition.type="dyn"
PRODUCT_PROPERTY_OVERRIDES += persist.hwc.mdpcomp.enable="false"
# Use Hardware Rendering
PRODUCT_PROPERTY_OVERRIDES += debug.sf.hw="true"
# Media StageFright
PRODUCT_PROPERTY_OVERRIDES += media.stagefright.enable-player="true"
PRODUCT_PROPERTY_OVERRIDES += media.stagefright.enable-meta="false"
PRODUCT_PROPERTY_OVERRIDES += media.stagefright.enable-scan="true"
PRODUCT_PROPERTY_OVERRIDES += media.stagefright.enable-http="true"
PRODUCT_PROPERTY_OVERRIDES += media.stagefright.enable-fma2dp="true"
PRODUCT_PROPERTY_OVERRIDES += media.stagefright.enable-aac="true"
PRODUCT_PROPERTY_OVERRIDES += media.stagefright.enable-qcp="true"
# RIL
PRODUCT_PROPERTY_OVERRIDES += ril.subscription.types="NV,RUIM"
PRODUCT_PROPERTY_OVERRIDES += ro.telephony.ril.v3="qcomdsds,signalstrength"
PRODUCT_PROPERTY_OVERRIDES += ro.telephony.call_ring.multiple="false"
PRODUCT_PROPERTY_OVERRIDES += ro.telephony.call_ring="false"
# GSM Preferred
PRODUCT_PROPERTY_OVERRIDES += ro.telephony.default_network="3"
# RILD
PRODUCT_PROPERTY_OVERRIDES += rild.libpath="/system/lib/libril-qc-qmi-1.so"
PRODUCT_PROPERTY_OVERRIDES += persist.rild.nitz_plmn=""
PRODUCT_PROPERTY_OVERRIDES += persist.rild.nitz_long_ons_0=""
PRODUCT_PROPERTY_OVERRIDES += persist.rild.nitz_long_ons_1=""
PRODUCT_PROPERTY_OVERRIDES += persist.rild.nitz_long_ons_2=""
PRODUCT_PROPERTY_OVERRIDES += persist.rild.nitz_long_ons_3=""
PRODUCT_PROPERTY_OVERRIDES += persist.rild.nitz_short_ons_0=""
PRODUCT_PROPERTY_OVERRIDES += persist.rild.nitz_short_ons_1=""
PRODUCT_PROPERTY_OVERRIDES += persist.rild.nitz_short_ons_2=""
PRODUCT_PROPERTY_OVERRIDES += persist.rild.nitz_short_ons_3=""
# Data
PRODUCT_PROPERTY_OVERRIDES += ro.use_data_netmgrd="true"
PRODUCT_PROPERTY_OVERRIDES += persist.data.ds_fmc_app.mode="false"
# SIM
PRODUCT_PROPERTY_OVERRIDES += persist.service.factory.enable="false"
PRODUCT_PROPERTY_OVERRIDES += persist.radio.apm_sim_not_pwdn="true"
# Debug
PRODUCT_PROPERTY_OVERRIDES += debug.gralloc.map_fb_memory="true"
PRODUCT_PROPERTY_OVERRIDES += debug.hwc.fakevsync="true"
