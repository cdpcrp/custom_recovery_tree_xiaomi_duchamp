# Copyright (C) 2024 The Android Open Source Project
# SPDX-License-Identifier: Apache-2.0

LOCAL_PATH := device/$(PRODUCT_MANUFACTURER)/$(PRODUCT_DEVICE)

# A/B
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

PRODUCT_PACKAGES += \
    otapreopt_script 

AB_OTA_PARTITIONS += system boot vbmeta_system odm_dlkm product vbmeta_vendor vendor_dlkm system_ext vendor_boot vendor

# Boot Control
PRODUCT_PACKAGES += \
    bootctrl.mt6789

# Update Engine
PRODUCT_PACKAGES += \
    update_engine \
    update_verifier \
    update_engine_sideload
