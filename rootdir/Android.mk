LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

# Device init files

include $(CLEAR_VARS)
LOCAL_MODULE       := fstab.vee3
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/$(LOCAL_MODULE)
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.qcom.usb.sh
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/$(LOCAL_MODULE)
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.qcom.class_main.sh
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/$(LOCAL_MODULE)
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.qcom.sh
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/$(LOCAL_MODULE)
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.vee3.rc
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/$(LOCAL_MODULE)
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.qcom.usb.rc
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/$(LOCAL_MODULE)
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.qcom.ril.path.sh
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/$(LOCAL_MODULE)
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := ueventd.vee3.rc
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/$(LOCAL_MODULE)
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

# Charger

include $(CLEAR_VARS)
LOCAL_MODULE       := chargerlogo
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/sbin/$(LOCAL_MODULE)
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)/sbin
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := battery_charging_01.png
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/res/images/chargerimages/$(LOCAL_MODULE)
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)/res/images/chargerimages
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := battery_charging_02.png
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/res/images/chargerimages/$(LOCAL_MODULE)
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)/res/images/chargerimages
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := battery_charging_03.png
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/res/images/chargerimages/$(LOCAL_MODULE)
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)/res/images/chargerimages
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := battery_charging_04.png
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/res/images/chargerimages/$(LOCAL_MODULE)
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)/res/images/chargerimages
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := battery_charging_05.png
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/res/images/chargerimages/$(LOCAL_MODULE)
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)/res/images/chargerimages
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := battery_charging_06.png
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/res/images/chargerimages/$(LOCAL_MODULE)
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)/res/images/chargerimages
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := battery_charging_07.png
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/res/images/chargerimages/$(LOCAL_MODULE)
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)/res/images/chargerimages
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := battery_charging_08.png
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/res/images/chargerimages/$(LOCAL_MODULE)
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)/res/images/chargerimages
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := battery_charging_bg.png
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/res/images/chargerimages/$(LOCAL_MODULE)
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)/res/images/chargerimages
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := battery_charging_complete.png
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/res/images/chargerimages/$(LOCAL_MODULE)
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)/res/images/chargerimages
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := battery_charging_warning.png
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/res/images/chargerimages/$(LOCAL_MODULE)
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)/res/images/chargerimages
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := battery_charging_warning_eng_1.png
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/res/images/chargerimages/$(LOCAL_MODULE)
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)/res/images/chargerimages
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := battery_charging_warning_eng_2.png
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/res/images/chargerimages/$(LOCAL_MODULE)
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)/res/images/chargerimages
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := battery_trickle_ani_01.png
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/res/images/chargerimages/$(LOCAL_MODULE)
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)/res/images/chargerimages
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := battery_trickle_ani_02.png
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/res/images/chargerimages/$(LOCAL_MODULE)
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)/res/images/chargerimages
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := battery_wait_ani_01.png
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/res/images/chargerimages/$(LOCAL_MODULE)
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)/res/images/chargerimages
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := battery_wait_ani_02.png
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/res/images/chargerimages/$(LOCAL_MODULE)
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)/res/images/chargerimages
include $(BUILD_PREBUILT)
