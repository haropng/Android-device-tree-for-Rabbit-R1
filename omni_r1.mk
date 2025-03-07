#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from r1 device
$(call inherit-product, device/rabbit/r1/device.mk)

PRODUCT_DEVICE := r1
PRODUCT_NAME := omni_r1
PRODUCT_BRAND := Rabbit
PRODUCT_MODEL := r1
PRODUCT_MANUFACTURER := rabbit

PRODUCT_GMS_CLIENTID_BASE := android-rabbit

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_r1-user 12 SP1A.210812.016 619 release-keys"

BUILD_FINGERPRINT := Rabbit/vnd_r1/r1:12/SP1A.210812.016/20241119184237:user/release-keys
# Inherit from our custom product configuration
$(call inherit-product, vendor/pb/config/common.mk)
