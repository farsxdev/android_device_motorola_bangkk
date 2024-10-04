#
# Copyright (C) 2024 The PixelOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from bangkk device
$(call inherit-product, device/motorola/bangkk/device.mk)

# Inherit some common PixelOS stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# PixelOS Additions
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_YOUTUBE := true
TARGET_CALL_RECORDING_SUPPORTED := true

PRODUCT_NAME := aosp_bangkk
PRODUCT_DEVICE := bangkk
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g84 5G

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=bangkk_g \
    PRIVATE_BUILD_DESC="bangkk_g-user 14 U1TCS34M.22-64-18-3 aa936 release-keys"

BUILD_FINGERPRINT := motorola/bangkk_g/bangkk:11/U1TCS34.22-64-18-3/37e073:user/release-keys
