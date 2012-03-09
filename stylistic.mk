PRODUCT_PACKAGES := $(THIRD_PARTY_APPS)
PRODUCT_PACKAGES += lights.default
PRODUCT_PACKAGES += sensors.$(TARGET_PRODUCT)
PRODUCT_PACKAGES += wacom-input
PRODUCT_PACKAGES += tablet-mode
PRODUCT_PACKAGES += su Superuser FileManager alsa_amixer radiooptions rild libreference-ril libjni_pinyinime PinyinIME

$(call inherit-product,$(SRC_TARGET_DIR)/product/generic_x86.mk)

PRODUCT_NAME := fujitsu_stylistic
PRODUCT_DEVICE := stylistic
PRODUCT_MANUFACTURER := fujitsu

DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlays

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ueventd.$(TARGET_PRODUCT).rc:root/ueventd.$(TARGET_PRODUCT).rc \
    $(LOCAL_PATH)/wacom-input.idc:system/usr/idc/wacom-input.idc \
    $(LOCAL_PATH)/AT_Translated_Set_2_keyboard.idc:system/usr/idc/AT_Translated_Set_2_keyboard.idc \
    $(LOCAL_PATH)/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/etc/permissions/features.xml:system/etc/permissions/features.xml \
    $(LOCAL_PATH)/system/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
    $(LOCAL_PATH)/system/etc/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
    $(LOCAL_PATH)/system/framework/com.google.android.maps.jar:system/framework/com.google.android.maps.jar \
    $(LOCAL_PATH)/system/framework/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar

include $(call all-subdir-makefiles)
