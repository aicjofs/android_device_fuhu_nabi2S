
$(call inherit-product-if-exists, vendor/fuhu/nabi2S/nabi2S-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/fuhu/nabi2S/overlay

TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 800

LOCAL_PATH := device/fuhu/nabi2S
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel


PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

