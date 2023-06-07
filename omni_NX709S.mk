#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from NX709S device
$(call inherit-product, device/nubia/NX709S/device.mk)

PRODUCT_DEVICE := NX709S
PRODUCT_NAME := omni_NX709S
PRODUCT_BRAND := nubia
PRODUCT_MODEL := NX709S
PRODUCT_MANUFACTURER := nubia

PRODUCT_GMS_CLIENTID_BASE := android-nubia

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="NX709S-user 12 SKQ1.220502.001 eng.nubia.20230513.165016 release-keys"

BUILD_FINGERPRINT := nubia/NX709S/NX709S:12/SKQ1.220502.001/eng.nubia.20230513.165016:user/release-keys
