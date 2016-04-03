LOCAL_PATH:= $(call my-dir)

# TWRP Hack
$(shell mkdir -p $(OUT)/recovery/root/etc)
$(shell cp $(LOCAL_PATH)/recovery/twrp.fstab $(OUT)/recovery/root/etc/twrp.fstab)

# Common Recovery Device Set Hack
$(shell cp $(LOCAL_PATH)/recovery/init.recovery.vee-common.bb.sh $(OUT)/recovery/root/init.recovery.vee-common.bb.sh)
$(shell cp $(LOCAL_PATH)/recovery/init.recovery.vee-common.rc $(OUT)/recovery/root/init.recovery.$(TARGET_DEVICE).rc)

# Device Rootdir files
$(shell cp $(LOCAL_PATH)/$(TARGET_DEVICE)/init.$(TARGET_DEVICE).rc $(TARGET_ROOT_OUT)/init.$(TARGET_DEVICE).rc)
$(shell cp $(LOCAL_PATH)/vee-common/fstab.vee-common $(TARGET_ROOT_OUT)/fstab.$(TARGET_DEVICE))
$(shell cp $(LOCAL_PATH)/vee-common/ueventd.vee-common.rc $(TARGET_ROOT_OUT)/ueventd.$(TARGET_DEVICE).rc)
