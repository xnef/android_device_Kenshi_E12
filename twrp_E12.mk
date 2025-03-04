#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
#$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from E12 device
$(call inherit-product, device/kenshi/E12/device.mk)

PRODUCT_DEVICE := E12
PRODUCT_NAME := twrp_E12
PRODUCT_BRAND := KENSHI
PRODUCT_MODEL := E12
PRODUCT_MANUFACTURER := kenshi

PRODUCT_GMS_CLIENTID_BASE := android-kenshi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="E12-user 12 TP1A.220624.014 1703812152 release-keys"

BUILD_FINGERPRINT := KENSHI/E12/E12:13/TP1A.220624.014/1703812152:user/release-keys
