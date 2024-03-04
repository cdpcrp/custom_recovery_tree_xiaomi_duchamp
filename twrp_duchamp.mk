# Copyright (C) 2024 The Android Open Source Project
# SPDX-License-Identifier: Apache-2.0

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from duchamp device
$(call inherit-product, device/xiaomi/duchamp/device.mk)

PRODUCT_DEVICE := duchamp
PRODUCT_NAME := twrp_duchamp
PRODUCT_BRAND := POCO
PRODUCT_MODEL := Poco X6 Pro
PRODUCT_PLATFORM := mt6897
PRODUCT_MANUFACTURER := xiaomi
    