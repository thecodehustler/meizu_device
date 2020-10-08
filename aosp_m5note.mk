# Check for target product
ifeq (aosp_m5note,$(TARGET_PRODUCT))

LOCAL_PATH := device/meizu/m5note

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Release name
PRODUCT_RELEASE_NAME := m5note

# Device display
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Device identifier
PRODUCT_BRAND := Meizu
PRODUCT_MANUFACTURER := Meizu
PRODUCT_MODEL := M5 Note
PRODUCT_NAME := aosp_m5note
PRODUCT_RELEASE_NAME := M5 Note
PRODUCT_RESTRICT_VENDOR_FILES := false

# SDcard
PRODUCT_CHARACTERISTICS := nosdcard

# Google client ID property.
PRODUCT_GMS_CLIENTID_BASE := android-meizu

# Build fingerprint from Indian variant.
PRODUCT_BUILD_PROP_OVERRIDES += \
	BUILD_FINGERPRINT=Meizu/M1621/M1621:7.0/NRD90M/1594295075:user/release-keys \
	PRIVATE_BUILD_DESC="M1621-user 7.0 NRD90M 1594295075 release-keys"

endif
