LOCAL_PATH := $(call my-dir)
TARGET_KERNEL_CONFIG := $(LOCAL_PATH)/stylistic_defconfig
TARGET_INITRD_SCRIPTS := $(LOCAL_PATH)/stylistic_info
TARGET_PREBUILT_APPS := $(subst $(LOCAL_PATH)/,,$(wildcard $(LOCAL_PATH)/app/*))
$(call add-prebuilt-targets,$(TARGET_OUT),$(TARGET_PREBUILT_APPS))

include $(GENERIC_X86_ANDROID_MK)
